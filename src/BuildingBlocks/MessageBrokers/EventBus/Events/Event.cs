using Newtonsoft.Json;
using System;

namespace Maktub.BuildingBlocks.MessageBrokers.EventBus.Events
{
    public class Event
    {
        public Event()
        {
            Id = Guid.NewGuid();
            CreationDate = DateTime.UtcNow;
        }

        [JsonConstructor]
        public Event(Guid id, DateTime creationDate)
        {
            Id = id;
            CreationDate = creationDate;
        }

        [JsonProperty]
        public Guid Id { get; private set; }
        [JsonProperty]
        public DateTime CreationDate { get; private set; }
    }
}
