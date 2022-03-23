
local USER_INELIGIBLE_WARNING = "Current Player is not eligible to use Spatial Voice"
local PLACE_INELIGIBLE_WARNING = "Current place is not eligible for Spatial Voice. Spatial Voice is available for places with Max Players <= 30."

local MIN_VOICE_CHAT_API_VERSION = 3
local MIN_VOICE_CHAT_API_VERSION_LOCAL_MIC_ACTIVITY = 9
local MIN_VOICE_CHAT_API_VERSION_IS_CONTEXT_ENABLED = 10
local VOICE_CHAT_AVAILABILITY = {
	PlaceNotAvailable = -1,
	UserNotAvailable = 0,
	Checking = 1,
	Available = 2,
}

local VOICE_CHAT_DEVICE_TYPE = {
	Input = "Input",
	Output = "Output",
}

local VOICE_STATE = {
	INACTIVE = "Inactive",
	TALKING = "Talking",
	CONNECTING = "Connecting",
	MUTED = "Muted",
	LOCAL_MUTED = "LOCAL_MUTED",
	ERROR = "Error",
	HIDDEN = "Hidden",
}

return {
    VOICE_STATE = VOICE_STATE,
    USER_INELIGIBLE_WARNING = USER_INELIGIBLE_WARNING,
    PLACE_INELIGIBLE_WARNING = PLACE_INELIGIBLE_WARNING,
    MIN_VOICE_CHAT_API_VERSION = MIN_VOICE_CHAT_API_VERSION,
    MIN_VOICE_CHAT_API_VERSION_LOCAL_MIC_ACTIVITY = MIN_VOICE_CHAT_API_VERSION_LOCAL_MIC_ACTIVITY,
    MIN_VOICE_CHAT_API_VERSION_IS_CONTEXT_ENABLED = MIN_VOICE_CHAT_API_VERSION_IS_CONTEXT_ENABLED,
    VOICE_CHAT_AVAILABILITY = VOICE_CHAT_AVAILABILITY,
    VOICE_CHAT_DEVICE_TYPE = VOICE_CHAT_DEVICE_TYPE,
}