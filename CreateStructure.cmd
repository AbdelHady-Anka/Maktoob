REM dotnet new sln -n Maktub
REM dotnet new sln -n MaktubServices
REM dotnet new sln -n MaktubBuildingBlocks

REM dotnet "new" "classlib" "-lang" "c#" "-n" "Maktub.BuildingBlocks.MessageBrokers.EventBus" "-o" "src\BuildingBlocks\MessageBrokers\EventBus"
REM dotnet "sln" "MaktubBuildingBlocks.sln" "add" "src\BuildingBlocks\MessageBrokers\EventBus\Maktub.BuildingBlocks.MessageBrokers.EventBus.csproj"

dotnet "new" "classlib" "-lang" "c#" "-n" "Maktub.BuildingBlocks.MessageBrokers.RabbitMQ" "-o" "src\BuildingBlocks\MessageBrokers\RabbitMQ"
dotnet "sln" "MaktubBuildingBlocks.sln" "add" "src\BuildingBlocks\MessageBrokers\RabbitMQ\Maktub.BuildingBlocks.MessageBrokers.RabbitMQ.csproj"

REM dotnet "new" "webapi" "-lang" "C#" "-n" "Maktub.Services.Messenger.Presentation" "-o" "src\Services\Messenger\Messenger.Presentation"
REM dotnet "new" "classlib" "-lang" "C#" "-n" "Maktub.Services.Messenger.Common" "-o" "src\Services\Messenger\Messenger.Common"
REM dotnet "new" "classlib" "-lang" "C#" "-n" "Maktub.Services.Messenger.Domain" "-o" "src\Services\Messenger\Messenger.Domain"
REM dotnet "new" "classlib" "-lang" "C#" "-n" "Maktub.Services.Messenger.Infrastructure" "-o" "src\Services\Messenger\Messenger.Infrastructure"
REM dotnet "new" "classlib" "-lang" "C#" "-n" "Maktub.Services.Messenger.Persistance" "-o" "src\Services\Messenger\Messenger.Persistance"
REM dotnet "new" "classlib" "-lang" "C#" "-n" "Maktub.Services.Messenger.Application" "-o" "src\Services\Messenger\Messenger.Application"

REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Messenger\Messenger.Presentation\Maktub.Services.Messenger.Presentation.csproj"
REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Messenger\Messenger.Common\Maktub.Services.Messenger.Common.csproj"
REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Messenger\Messenger.Domain\Maktub.Services.Messenger.Domain.csproj"
REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Messenger\Messenger.Infrastructure\Maktub.Services.Messenger.Infrastructure.csproj"
REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Messenger\Messenger.Persistance\Maktub.Services.Messenger.Persistance.csproj"
REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Messenger\Messenger.Application\Maktub.Services.Messenger.Application.csproj"


REM dotnet "new" "webapi" "-lang" "C#" "-n" "Maktub.Services.Memento.Presentation" "-o" "src\Services\Memento\Memento.Presentation"
REM dotnet "new" "classlib" "-lang" "C#" "-n" "Maktub.Services.Memento.Common" "-o" "src\Services\Memento\Memento.Common"
REM dotnet "new" "classlib" "-lang" "C#" "-n" "Maktub.Services.Memento.Domain" "-o" "src\Services\Memento\Memento.Domain"
REM dotnet "new" "classlib" "-lang" "C#" "-n" "Maktub.Services.Memento.Infrastructure" "-o" "src\Services\Memento\Memento.Infrastructure"
REM dotnet "new" "classlib" "-lang" "C#" "-n" "Maktub.Services.Memento.Persistance" "-o" "src\Services\Memento\Memento.Persistance"
REM dotnet "new" "classlib" "-lang" "C#" "-n" "Maktub.Services.Memento.Application" "-o" "src\Services\Memento\Memento.Application"

REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Memento\Memento.Presentation\Maktub.Services.Memento.Presentation.csproj"
REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Memento\Memento.Common\Maktub.Services.Memento.Common.csproj"
REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Memento\Memento.Domain\Maktub.Services.Memento.Domain.csproj"
REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Memento\Memento.Infrastructure\Maktub.Services.Memento.Infrastructure.csproj"
REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Memento\Memento.Persistance\Maktub.Services.Memento.Persistance.csproj"
REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Memento\Memento.Application\Maktub.Services.Memento.Application.csproj"



REM dotnet "new" "webapi" "-lang" "C#" "-n" "Maktub.Services.Identity.Presentation" "-o" "src\Services\Identity\Identity.Presentation"
REM dotnet "new" "classlib" "-lang" "C#" "-n" "Maktub.Services.Identity.Common" "-o" "src\Services\Identity\Identity.Common"
REM dotnet "new" "classlib" "-lang" "C#" "-n" "Maktub.Services.Identity.Domain" "-o" "src\Services\Identity\Identity.Domain"
REM dotnet "new" "classlib" "-lang" "C#" "-n" "Maktub.Services.Identity.Infrastructure" "-o" "src\Services\Identity\Identity.Infrastructure"
REM dotnet "new" "classlib" "-lang" "C#" "-n" "Maktub.Services.Identity.Persistance" "-o" "src\Services\Identity\Identity.Persistance"
REM dotnet "new" "classlib" "-lang" "C#" "-n" "Maktub.Services.Identity.Application" "-o" "src\Services\Identity\Identity.Application"

REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Identity\Identity.Presentation\Maktub.Services.Identity.Presentation.csproj"
REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Identity\Identity.Common\Maktub.Services.Identity.Common.csproj"
REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Identity\Identity.Domain\Maktub.Services.Identity.Domain.csproj"
REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Identity\Identity.Infrastructure\Maktub.Services.Identity.Infrastructure.csproj"
REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Identity\Identity.Persistance\Maktub.Services.Identity.Persistance.csproj"
REM dotnet "sln" "MaktubServices.sln" "add" "src\Services\Identity\Identity.Application\Maktub.Services.Identity.Application.csproj"
