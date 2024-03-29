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

// GetEventByUserIDHandlerReader is a Reader for the GetEventByUserIDHandler structure.
type GetEventByUserIDHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetEventByUserIDHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetEventByUserIDHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetEventByUserIDHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetEventByUserIDHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetEventByUserIDHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetEventByUserIDHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetEventByUserIDHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/namespaces/{namespace}/users/{userId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetEventByUserIDHandlerOK creates a GetEventByUserIDHandlerOK with default headers values
func NewGetEventByUserIDHandlerOK() *GetEventByUserIDHandlerOK {
	return &GetEventByUserIDHandlerOK{}
}

/*GetEventByUserIDHandlerOK handles this case with default header values.

  OK
*/
type GetEventByUserIDHandlerOK struct {
	Payload *eventlogclientmodels.ModelsEventResponse
}

func (o *GetEventByUserIDHandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}][%d] getEventByUserIdHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *GetEventByUserIDHandlerOK) ToJSONString() string {
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

func (o *GetEventByUserIDHandlerOK) GetPayload() *eventlogclientmodels.ModelsEventResponse {
	return o.Payload
}

func (o *GetEventByUserIDHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetEventByUserIDHandlerBadRequest creates a GetEventByUserIDHandlerBadRequest with default headers values
func NewGetEventByUserIDHandlerBadRequest() *GetEventByUserIDHandlerBadRequest {
	return &GetEventByUserIDHandlerBadRequest{}
}

/*GetEventByUserIDHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type GetEventByUserIDHandlerBadRequest struct {
}

func (o *GetEventByUserIDHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}][%d] getEventByUserIdHandlerBadRequest ", 400)
}

func (o *GetEventByUserIDHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByUserIDHandlerUnauthorized creates a GetEventByUserIDHandlerUnauthorized with default headers values
func NewGetEventByUserIDHandlerUnauthorized() *GetEventByUserIDHandlerUnauthorized {
	return &GetEventByUserIDHandlerUnauthorized{}
}

/*GetEventByUserIDHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetEventByUserIDHandlerUnauthorized struct {
}

func (o *GetEventByUserIDHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}][%d] getEventByUserIdHandlerUnauthorized ", 401)
}

func (o *GetEventByUserIDHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByUserIDHandlerForbidden creates a GetEventByUserIDHandlerForbidden with default headers values
func NewGetEventByUserIDHandlerForbidden() *GetEventByUserIDHandlerForbidden {
	return &GetEventByUserIDHandlerForbidden{}
}

/*GetEventByUserIDHandlerForbidden handles this case with default header values.

  Forbidden
*/
type GetEventByUserIDHandlerForbidden struct {
}

func (o *GetEventByUserIDHandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}][%d] getEventByUserIdHandlerForbidden ", 403)
}

func (o *GetEventByUserIDHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByUserIDHandlerNotFound creates a GetEventByUserIDHandlerNotFound with default headers values
func NewGetEventByUserIDHandlerNotFound() *GetEventByUserIDHandlerNotFound {
	return &GetEventByUserIDHandlerNotFound{}
}

/*GetEventByUserIDHandlerNotFound handles this case with default header values.

  Not Found
*/
type GetEventByUserIDHandlerNotFound struct {
}

func (o *GetEventByUserIDHandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}][%d] getEventByUserIdHandlerNotFound ", 404)
}

func (o *GetEventByUserIDHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByUserIDHandlerInternalServerError creates a GetEventByUserIDHandlerInternalServerError with default headers values
func NewGetEventByUserIDHandlerInternalServerError() *GetEventByUserIDHandlerInternalServerError {
	return &GetEventByUserIDHandlerInternalServerError{}
}

/*GetEventByUserIDHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetEventByUserIDHandlerInternalServerError struct {
}

func (o *GetEventByUserIDHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}][%d] getEventByUserIdHandlerInternalServerError ", 500)
}

func (o *GetEventByUserIDHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
