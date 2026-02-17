using DataProviderServiceShared.MediaServices;
using DataProviderServiceShared.SharingInfoDetail;
using Microsoft.AspNetCore.Mvc;
using myunisaveapi.Enums;

namespace myunisaveapi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MediaController : ControllerBase
    {
        private readonly IWebHostEnvironment _environment;
        private readonly AllmediaServiceFactory _AllmediaServiceFactory;
        public MediaController(IWebHostEnvironment environment, AllmediaServiceFactory allmediaServiceFactory)
        {
            _environment = environment;
            _AllmediaServiceFactory = allmediaServiceFactory;
        }

        [HttpPost("upload_images")]
    public async Task<IActionResult> UploadFiles(
    [FromForm] List<IFormFile> files,
    [FromForm(Name = "image_type")] int imageType,
    [FromForm] int id)
        {
            try
            {
                if (files == null || files.Count == 0)
                    return BadRequest(new { Message = "No files uploaded." });

                if (id <= 0)
                    return BadRequest(new { Message = "Invalid Id." });

                // Validate enum
                if (!Enum.IsDefined(typeof(MediaFolderType), imageType))
                    return BadRequest(new { Message = "Invalid image_type." });

                var folderType = ((MediaFolderType)imageType).ToString();

                var allowedExtensions = new[] { ".jpg", ".jpeg", ".png", ".gif", ".webp" };
                var maxFileSize = 5 * 1024 * 1024; // 5MB

                var basePath = Path.Combine(
                    _environment.WebRootPath ?? "wwwroot",
                    "Assets",
                    folderType
                    
                );

                if (!Directory.Exists(basePath))
                    Directory.CreateDirectory(basePath);

                var uploadedFiles = new List<string>();

                foreach (var file in files)
                {
                    if (file.Length == 0 || file.Length > maxFileSize)
                        continue;

                    var extension = Path.GetExtension(file.FileName).ToLower();

                    if (!allowedExtensions.Contains(extension))
                        continue;

                    var fileName = $"{Guid.NewGuid()}{extension}";

                    string[] pnames = {
            "p_image_type", "record_id","p_image",
        };

                    string[] pvalues = {
imageType.ToString(),id.ToString(),fileName

        };

                    _AllmediaServiceFactory.add_images(pnames, pvalues);
                                        var filePath = Path.Combine(basePath, fileName);

                    using var stream = new FileStream(filePath, FileMode.Create);
                    await file.CopyToAsync(stream);

                    uploadedFiles.Add($"/Assets/{folderType}/{fileName}");
                }

                return Ok(new
                {
                    Success = true,
                    Message = "Files uploaded successfully",
                    Count = uploadedFiles.Count,
                    Files = uploadedFiles
                });
            }
            catch (Exception ex)
            {
                return StatusCode(500, new
                {
                    Success = false,
                    Message = "Something went wrong",
                    Error = ex.Message
                });
            }
        }

    }
}
