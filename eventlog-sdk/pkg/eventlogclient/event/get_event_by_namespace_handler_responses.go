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

// GetEventByNamespaceHandlerReader is a Reader for the GetEventByNamespaceHandler structure.
type GetEventByNamespaceHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetEventByNamespaceHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetEventByNamespaceHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetEventByNamespaceHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetEventByNamespaceHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetEventByNamespaceHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetEventByNamespaceHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetEventByNamespaceHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/namespaces/{namespace} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetEventByNamespaceHandlerOK creates a GetEventByNamespaceHandlerOK with default headers values
func NewGetEventByNamespaceHandlerOK() *GetEventByNamespaceHandlerOK {
	return &GetEventByNamespaceHandlerOK{}
}

/*GetEventByNamespaceHandlerOK handles this case with default header values.

  OK
*/
type GetEventByNamespaceHandlerOK struct {
	Payload *eventlogclientmodels.ModelsEventResponse
}

func (o *GetEventByNamespaceHandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}][%d] getEventByNamespaceHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *GetEventByNamespaceHandlerOK) ToJSONString() string {
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

func (o *GetEventByNamespaceHandlerOK) GetPayload() *eventlogclientmodels.ModelsEventResponse {
	return o.Payload
}

func (o *GetEventByNamespaceHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetEventByNamespaceHandlerBadRequest creates a GetEventByNamespaceHandlerBadRequest with default headers values
func NewGetEventByNamespaceHandlerBadRequest() *GetEventByNamespaceHandlerBadRequest {
	return &GetEventByNamespaceHandlerBadRequest{}
}

/*GetEventByNamespaceHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type GetEventByNamespaceHandlerBadRequest struct {
}

func (o *GetEventByNamespaceHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}][%d] getEventByNamespaceHandlerBadRequest ", 400)
}

func (o *GetEventByNamespaceHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByNamespaceHandlerUnauthorized creates a GetEventByNamespaceHandlerUnauthorized with default headers values
func NewGetEventByNamespaceHandlerUnauthorized() *GetEventByNamespaceHandlerUnauthorized {
	return &GetEventByNamespaceHandlerUnauthorized{}
}

/*GetEventByNamespaceHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetEventByNamespaceHandlerUnauthorized struct {
}

func (o *GetEventByNamespaceHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}][%d] getEventByNamespaceHandlerUnauthorized ", 401)
}

func (o *GetEventByNamespaceHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByNamespaceHandlerForbidden creates a GetEventByNamespaceHandlerForbidden with default headers values
func NewGetEventByNamespaceHandlerForbidden() *GetEventByNamespaceHandlerForbidden {
	return &GetEventByNamespaceHandlerForbidden{}
}

/*GetEventByNamespaceHandlerForbidden handles this case with default header values.

  Forbidden
*/
type GetEventByNamespaceHandlerForbidden struct {
}

func (o *GetEventByNamespaceHandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}][%d] getEventByNamespaceHandlerForbidden ", 403)
}

func (o *GetEventByNamespaceHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByNamespaceHandlerNotFound creates a GetEventByNamespaceHandlerNotFound with default headers values
func NewGetEventByNamespaceHandlerNotFound() *GetEventByNamespaceHandlerNotFound {
	return &GetEventByNamespaceHandlerNotFound{}
}

/*GetEventByNamespaceHandlerNotFound handles this case with default header values.

  Not Found
*/
type GetEventByNamespaceHandlerNotFound struct {
}

func (o *GetEventByNamespaceHandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}][%d] getEventByNamespaceHandlerNotFound ", 404)
}

func (o *GetEventByNamespaceHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventByNamespaceHandlerInternalServerError creates a GetEventByNamespaceHandlerInternalServerError with default headers values
func NewGetEventByNamespaceHandlerInternalServerError() *GetEventByNamespaceHandlerInternalServerError {
	return &GetEventByNamespaceHandlerInternalServerError{}
}

/*GetEventByNamespaceHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetEventByNamespaceHandlerInternalServerError struct {
}

func (o *GetEventByNamespaceHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}][%d] getEventByNamespaceHandlerInternalServerError ", 500)
}

func (o *GetEventByNamespaceHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
