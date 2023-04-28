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

// GetEventByEventTypeHandlerReader is a Reader for the GetEventByEventTypeHandler structure.
type GetEventByEventTypeHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetEventByEventTypeHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetEventByEventTypeHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetEventByEventTypeHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetEventByEventTypeHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetEventByEventTypeHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetEventByEventTypeHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetEventByEventTypeHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/namespaces/{namespace}/eventType/{eventType} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetEventByEventTypeHandlerOK creates a GetEventByEventTypeHandlerOK with default headers values
func NewGetEventByEventTypeHandlerOK() *GetEventByEventTypeHandlerOK {
	return &GetEventByEventTypeHandlerOK{}
}

/*GetEventByEventTypeHandlerOK handles this case with default header values.

  OK
*/
type GetEventByEventTypeHandlerOK struct {
	Payload *eventlogclientmodels.ModelsEventResponse
}

func (o *GetEventByEventTypeHandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventType/{eventType}][%d] getEventByEventTypeHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *GetEventByEventTypeHandlerOK) ToJSONString() string {
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

func (o *GetEventByEventTypeHandlerOK) GetPayload() *eventlogclientmodels.ModelsEventResponse {
	return o.Payload
}

func (o *GetEventByEventTypeHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetEventByEventTypeHandlerBadRequest creates a GetEventByEventTypeHandlerBadRequest with default headers values
func NewGetEventByEventTypeHandlerBadRequest() *GetEventByEventTypeHandlerBadRequest {
	return &GetEventByEventTypeHandlerBadRequest{}
}

/*GetEventByEventTypeHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type GetEventByEventTypeHandlerBadRequest struct {
}

func (o *GetEventByEventTypeHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventType/{eventType}][%d] getEventByEventTypeHandlerBadRequest ", 400)
}

func (o *GetEventByEventTypeHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByEventTypeHandlerUnauthorized creates a GetEventByEventTypeHandlerUnauthorized with default headers values
func NewGetEventByEventTypeHandlerUnauthorized() *GetEventByEventTypeHandlerUnauthorized {
	return &GetEventByEventTypeHandlerUnauthorized{}
}

/*GetEventByEventTypeHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetEventByEventTypeHandlerUnauthorized struct {
}

func (o *GetEventByEventTypeHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventType/{eventType}][%d] getEventByEventTypeHandlerUnauthorized ", 401)
}

func (o *GetEventByEventTypeHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByEventTypeHandlerForbidden creates a GetEventByEventTypeHandlerForbidden with default headers values
func NewGetEventByEventTypeHandlerForbidden() *GetEventByEventTypeHandlerForbidden {
	return &GetEventByEventTypeHandlerForbidden{}
}

/*GetEventByEventTypeHandlerForbidden handles this case with default header values.

  Forbidden
*/
type GetEventByEventTypeHandlerForbidden struct {
}

func (o *GetEventByEventTypeHandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventType/{eventType}][%d] getEventByEventTypeHandlerForbidden ", 403)
}

func (o *GetEventByEventTypeHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByEventTypeHandlerNotFound creates a GetEventByEventTypeHandlerNotFound with default headers values
func NewGetEventByEventTypeHandlerNotFound() *GetEventByEventTypeHandlerNotFound {
	return &GetEventByEventTypeHandlerNotFound{}
}

/*GetEventByEventTypeHandlerNotFound handles this case with default header values.

  Not Found
*/
type GetEventByEventTypeHandlerNotFound struct {
}

func (o *GetEventByEventTypeHandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventType/{eventType}][%d] getEventByEventTypeHandlerNotFound ", 404)
}

func (o *GetEventByEventTypeHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByEventTypeHandlerInternalServerError creates a GetEventByEventTypeHandlerInternalServerError with default headers values
func NewGetEventByEventTypeHandlerInternalServerError() *GetEventByEventTypeHandlerInternalServerError {
	return &GetEventByEventTypeHandlerInternalServerError{}
}

/*GetEventByEventTypeHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetEventByEventTypeHandlerInternalServerError struct {
}

func (o *GetEventByEventTypeHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/eventType/{eventType}][%d] getEventByEventTypeHandlerInternalServerError ", 500)
}

func (o *GetEventByEventTypeHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
