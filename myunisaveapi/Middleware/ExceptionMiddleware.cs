using Microsoft.AspNetCore.Http;
using System;
using System.Threading.Tasks;

namespace myunisaveapi.Middleware
{
    public class ExceptionMiddleware
    {
        private readonly RequestDelegate _next;

        public ExceptionMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public async Task InvokeAsync(HttpContext context)
        {
            try
            {
                await _next(context);
            }
            catch (Exception ex)
            {
                await HandleExceptionAsync(context, ex);
            }
        }

        private static Task HandleExceptionAsync(HttpContext context, Exception exception)
        {
            context.Response.ContentType = "application/json";
            context.Response.StatusCode = StatusCodes.Status500InternalServerError;
            return context.Response.WriteAsync(new            {
                context.Response.StatusCode,
                Message = "An unexpected error occurred!",
                Detailed = exception.ToString() // Include detailed exception information
            }.ToString());
        }
    }
}
