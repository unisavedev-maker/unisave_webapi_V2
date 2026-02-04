using DataProviderServiceShared.BrandMaster;
using DataProviderServiceShared.BusinessMaster;
using DataProviderServiceShared.CategoryMaster;
using DataProviderServiceShared.HomeBannerAdd;
using DataProviderServiceShared.RelationManagement;
using DataProviderServiceShared.ShareAllocationMaster;
using DataProviderServiceShared.StoreFinder;
using DataProviderServiceShared.UserAuthentication;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;
using Microsoft.Net.Http.Headers;
using MySqlDlayerShared;
using myunisaveapi.Middleware;
using System.Reflection.PortableExecutable;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();
builder.Services.AddTransient<MySqlSharedHelperAPI>();
builder.Services.AddScoped<usermanagement>();
builder.Services.AddScoped<findmystore>();
builder.Services.AddScoped<BusinessMasterDataFactory>();
builder.Services.AddScoped<CategoryMasterDataFactory>();
builder.Services.AddScoped<HomeBannerDataFactory>();
builder.Services.AddScoped<BrandMasterDataFactory>();
builder.Services.AddScoped<ParticiepentsDataFactory>();
builder.Services.AddScoped<RelationshipDataFactory>();

builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddSwaggerGen(c =>
{
    c.SwaggerDoc("v1", new Microsoft.OpenApi.Models.OpenApiInfo
    {
        Title = "My API",
        Version = "v1"
    });
});

builder.Services.AddCors(options =>
{
    options.AddDefaultPolicy(builder =>
    {
        builder.WithOrigins("http://191.101.0.168/") // Add the correct origin
               .AllowAnyMethod()
               .AllowAnyHeader();
    });
});
var app = builder.Build();
app.UseMiddleware<ExceptionMiddleware>();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{   
    app.UseExceptionHandler("/Home/Error");
   
}

if (app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");

}


if (!app.Environment.IsDevelopment())
{
    app.UseDeveloperExceptionPage();
    app.UseSwagger();
    app.UseSwaggerUI();
}

if (app.Environment.IsDevelopment())
{
    app.UseDeveloperExceptionPage();
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseStaticFiles();

app.UseRouting();


app.UseCors();
app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");


app.Run();

//app.Run("http://[::]:8802"); // Use a different port

