module Network.Protocol.Http
  (

  -- * HTTP message data types.

    Method (..)
  , Version
  , Key
  , Value
  , Headers (..)
  , Request (Request)
  , Response (Response)
  , Http (Http)

  -- * Creating (parts of) messages.

  , http10
  , http11
  , emptyHeaders
  , emptyRequest
  , emptyResponse

  -- * Accessing fields.

  , methods
  , major
  , minor
  , headers
  , version
  , headline
  , method
  , uri
  , asUri
  , status
  , normalizeHeader
  , header

  -- * Accessing specific header fields.

  , contentLength
  , connection
  , accept
  , acceptEncoding
  , acceptLanguage
  , cacheControl
  , keepAlive
  , cookie
  , setCookie
  , location
  , contentType
  , date
  , hostname
  , server
  , userAgent
  , upgrade
  , lastModified
  , acceptRanges
  , referer
  , origin
  , eTag

  -- * Parsing HTTP messages.

  , parseRequest
  , parseResponse
  , parseHeaders

  -- * Exposure of internal parsec parsers.

  , pRequest
  , pResponse
  , pHeaders
  , pVersion
  , pMethod

  -- * Parser helper methods.

  , versionFromString
  , methodFromString

  -- * Printer helper methods.

  , showRequestLine
  , showResponseLine

  -- * Handling HTTP status codes.

  , Status (..)
  , statusFailure
  , statusFromCode
  , codeFromStatus

  ) where

import Network.Protocol.Http.Data
import Network.Protocol.Http.Parser
import Network.Protocol.Http.Printer
import Network.Protocol.Http.Headers
import Network.Protocol.Http.Status

