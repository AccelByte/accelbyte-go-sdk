// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package event

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/eventlog-sdk/pkg/eventlogclientmodels"
)

// GetEventByUserIDAndEventTypeHandlerReader is a Reader for the GetEventByUserIDAndEventTypeHandler structure.
type GetEventByUserIDAndEventTypeHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetEventByUserIDAndEventTypeHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetEventByUserIDAndEventTypeHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetEventByUserIDAndEventTypeHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetEventByUserIDAndEventTypeHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetEventByUserIDAndEventTypeHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetEventByUserIDAndEventTypeHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetEventByUserIDAndEventTypeHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/namespaces/{namespace}/users/{userId}/eventType/{eventType} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetEventByUserIDAndEventTypeHandlerOK creates a GetEventByUserIDAndEventTypeHandlerOK with default headers values
func NewGetEventByUserIDAndEventTypeHandlerOK() *GetEventByUserIDAndEventTypeHandlerOK {
	return &GetEventByUserIDAndEventTypeHandlerOK{}
}

/*GetEventByUserIDAndEventTypeHandlerOK handles this case with default header values.

  OK
*/
type GetEventByUserIDAndEventTypeHandlerOK struct {
	Payload *eventlogclientmodels.ModelsEventResponse
}

func (o *GetEventByUserIDAndEventTypeHandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventType/{eventType}][%d] getEventByUserIdAndEventTypeHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *GetEventByUserIDAndEventTypeHandlerOK) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *GetEventByUserIDAndEventTypeHandlerOK) GetPayload() *eventlogclientmodels.ModelsEventResponse {
	return o.Payload
}

func (o *GetEventByUserIDAndEventTypeHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(eventlogclientmodels.ModelsEventResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetEventByUserIDAndEventTypeHandlerBadRequest creates a GetEventByUserIDAndEventTypeHandlerBadRequest with default headers values
func NewGetEventByUserIDAndEventTypeHandlerBadRequest() *GetEventByUserIDAndEventTypeHandlerBadRequest {
	return &GetEventByUserIDAndEventTypeHandlerBadRequest{}
}

/*GetEventByUserIDAndEventTypeHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type GetEventByUserIDAndEventTypeHandlerBadRequest struct {
}

func (o *GetEventByUserIDAndEventTypeHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventType/{eventType}][%d] getEventByUserIdAndEventTypeHandlerBadRequest ", 400)
}

func (o *GetEventByUserIDAndEventTypeHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByUserIDAndEventTypeHandlerUnauthorized creates a GetEventByUserIDAndEventTypeHandlerUnauthorized with default headers values
func NewGetEventByUserIDAndEventTypeHandlerUnauthorized() *GetEventByUserIDAndEventTypeHandlerUnauthorized {
	return &GetEventByUserIDAndEventTypeHandlerUnauthorized{}
}

/*GetEventByUserIDAndEventTypeHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetEventByUserIDAndEventTypeHandlerUnauthorized struct {
}

func (o *GetEventByUserIDAndEventTypeHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventType/{eventType}][%d] getEventByUserIdAndEventTypeHandlerUnauthorized ", 401)
}

func (o *GetEventByUserIDAndEventTypeHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByUserIDAndEventTypeHandlerForbidden creates a GetEventByUserIDAndEventTypeHandlerForbidden with default headers values
func NewGetEventByUserIDAndEventTypeHandlerForbidden() *GetEventByUserIDAndEventTypeHandlerForbidden {
	return &GetEventByUserIDAndEventTypeHandlerForbidden{}
}

/*GetEventByUserIDAndEventTypeHandlerForbidden handles this case with default header values.

  Forbidden
*/
type GetEventByUserIDAndEventTypeHandlerForbidden struct {
}

func (o *GetEventByUserIDAndEventTypeHandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventType/{eventType}][%d] getEventByUserIdAndEventTypeHandlerForbidden ", 403)
}

func (o *GetEventByUserIDAndEventTypeHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByUserIDAndEventTypeHandlerNotFound creates a GetEventByUserIDAndEventTypeHandlerNotFound with default headers values
func NewGetEventByUserIDAndEventTypeHandlerNotFound() *GetEventByUserIDAndEventTypeHandlerNotFound {
	return &GetEventByUserIDAndEventTypeHandlerNotFound{}
}

/*GetEventByUserIDAndEventTypeHandlerNotFound handles this case with default header values.

  Not Found
*/
type GetEventByUserIDAndEventTypeHandlerNotFound struct {
}

func (o *GetEventByUserIDAndEventTypeHandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventType/{eventType}][%d] getEventByUserIdAndEventTypeHandlerNotFound ", 404)
}

func (o *GetEventByUserIDAndEventTypeHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByUserIDAndEventTypeHandlerInternalServerError creates a GetEventByUserIDAndEventTypeHandlerInternalServerError with default headers values
func NewGetEventByUserIDAndEventTypeHandlerInternalServerError() *GetEventByUserIDAndEventTypeHandlerInternalServerError {
	return &GetEventByUserIDAndEventTypeHandlerInternalServerError{}
}

/*GetEventByUserIDAndEventTypeHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetEventByUserIDAndEventTypeHandlerInternalServerError struct {
}

func (o *GetEventByUserIDAndEventTypeHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/eventType/{eventType}][%d] getEventByUserIdAndEventTypeHandlerInternalServerError ", 500)
}

func (o *GetEventByUserIDAndEventTypeHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
