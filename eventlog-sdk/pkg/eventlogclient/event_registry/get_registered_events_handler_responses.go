// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package event_registry

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

// GetRegisteredEventsHandlerReader is a Reader for the GetRegisteredEventsHandler structure.
type GetRegisteredEventsHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetRegisteredEventsHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetRegisteredEventsHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetRegisteredEventsHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetRegisteredEventsHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetRegisteredEventsHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/registry/eventIds returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetRegisteredEventsHandlerOK creates a GetRegisteredEventsHandlerOK with default headers values
func NewGetRegisteredEventsHandlerOK() *GetRegisteredEventsHandlerOK {
	return &GetRegisteredEventsHandlerOK{}
}

/*GetRegisteredEventsHandlerOK handles this case with default header values.

  OK
*/
type GetRegisteredEventsHandlerOK struct {
	Payload *eventlogclientmodels.ModelsEventRegistry
}

func (o *GetRegisteredEventsHandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/registry/eventIds][%d] getRegisteredEventsHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *GetRegisteredEventsHandlerOK) ToJSONString() string {
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

func (o *GetRegisteredEventsHandlerOK) GetPayload() *eventlogclientmodels.ModelsEventRegistry {
	return o.Payload
}

func (o *GetRegisteredEventsHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(eventlogclientmodels.ModelsEventRegistry)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetRegisteredEventsHandlerUnauthorized creates a GetRegisteredEventsHandlerUnauthorized with default headers values
func NewGetRegisteredEventsHandlerUnauthorized() *GetRegisteredEventsHandlerUnauthorized {
	return &GetRegisteredEventsHandlerUnauthorized{}
}

/*GetRegisteredEventsHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetRegisteredEventsHandlerUnauthorized struct {
}

func (o *GetRegisteredEventsHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /event/registry/eventIds][%d] getRegisteredEventsHandlerUnauthorized ", 401)
}

func (o *GetRegisteredEventsHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetRegisteredEventsHandlerForbidden creates a GetRegisteredEventsHandlerForbidden with default headers values
func NewGetRegisteredEventsHandlerForbidden() *GetRegisteredEventsHandlerForbidden {
	return &GetRegisteredEventsHandlerForbidden{}
}

/*GetRegisteredEventsHandlerForbidden handles this case with default header values.

  Forbidden
*/
type GetRegisteredEventsHandlerForbidden struct {
}

func (o *GetRegisteredEventsHandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /event/registry/eventIds][%d] getRegisteredEventsHandlerForbidden ", 403)
}

func (o *GetRegisteredEventsHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetRegisteredEventsHandlerInternalServerError creates a GetRegisteredEventsHandlerInternalServerError with default headers values
func NewGetRegisteredEventsHandlerInternalServerError() *GetRegisteredEventsHandlerInternalServerError {
	return &GetRegisteredEventsHandlerInternalServerError{}
}

/*GetRegisteredEventsHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetRegisteredEventsHandlerInternalServerError struct {
}

func (o *GetRegisteredEventsHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /event/registry/eventIds][%d] getRegisteredEventsHandlerInternalServerError ", 500)
}

func (o *GetRegisteredEventsHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
