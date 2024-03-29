// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package event_v2

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

// GetEventSpecificUserV2HandlerReader is a Reader for the GetEventSpecificUserV2Handler structure.
type GetEventSpecificUserV2HandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetEventSpecificUserV2HandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetEventSpecificUserV2HandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetEventSpecificUserV2HandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetEventSpecificUserV2HandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetEventSpecificUserV2HandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetEventSpecificUserV2HandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetEventSpecificUserV2HandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 501:
		result := NewGetEventSpecificUserV2HandlerNotImplemented()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/v2/admin/namespaces/{namespace}/users/{userId}/event returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetEventSpecificUserV2HandlerOK creates a GetEventSpecificUserV2HandlerOK with default headers values
func NewGetEventSpecificUserV2HandlerOK() *GetEventSpecificUserV2HandlerOK {
	return &GetEventSpecificUserV2HandlerOK{}
}

/*GetEventSpecificUserV2HandlerOK handles this case with default header values.

  OK
*/
type GetEventSpecificUserV2HandlerOK struct {
	Payload *eventlogclientmodels.ModelsEventResponseV2
}

func (o *GetEventSpecificUserV2HandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/v2/admin/namespaces/{namespace}/users/{userId}/event][%d] getEventSpecificUserV2HandlerOK  %+v", 200, o.ToJSONString())
}

func (o *GetEventSpecificUserV2HandlerOK) ToJSONString() string {
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

func (o *GetEventSpecificUserV2HandlerOK) GetPayload() *eventlogclientmodels.ModelsEventResponseV2 {
	return o.Payload
}

func (o *GetEventSpecificUserV2HandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(eventlogclientmodels.ModelsEventResponseV2)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetEventSpecificUserV2HandlerBadRequest creates a GetEventSpecificUserV2HandlerBadRequest with default headers values
func NewGetEventSpecificUserV2HandlerBadRequest() *GetEventSpecificUserV2HandlerBadRequest {
	return &GetEventSpecificUserV2HandlerBadRequest{}
}

/*GetEventSpecificUserV2HandlerBadRequest handles this case with default header values.

  Bad Request
*/
type GetEventSpecificUserV2HandlerBadRequest struct {
}

func (o *GetEventSpecificUserV2HandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/v2/admin/namespaces/{namespace}/users/{userId}/event][%d] getEventSpecificUserV2HandlerBadRequest ", 400)
}

func (o *GetEventSpecificUserV2HandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventSpecificUserV2HandlerUnauthorized creates a GetEventSpecificUserV2HandlerUnauthorized with default headers values
func NewGetEventSpecificUserV2HandlerUnauthorized() *GetEventSpecificUserV2HandlerUnauthorized {
	return &GetEventSpecificUserV2HandlerUnauthorized{}
}

/*GetEventSpecificUserV2HandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetEventSpecificUserV2HandlerUnauthorized struct {
}

func (o *GetEventSpecificUserV2HandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /event/v2/admin/namespaces/{namespace}/users/{userId}/event][%d] getEventSpecificUserV2HandlerUnauthorized ", 401)
}

func (o *GetEventSpecificUserV2HandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventSpecificUserV2HandlerForbidden creates a GetEventSpecificUserV2HandlerForbidden with default headers values
func NewGetEventSpecificUserV2HandlerForbidden() *GetEventSpecificUserV2HandlerForbidden {
	return &GetEventSpecificUserV2HandlerForbidden{}
}

/*GetEventSpecificUserV2HandlerForbidden handles this case with default header values.

  Forbidden
*/
type GetEventSpecificUserV2HandlerForbidden struct {
}

func (o *GetEventSpecificUserV2HandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /event/v2/admin/namespaces/{namespace}/users/{userId}/event][%d] getEventSpecificUserV2HandlerForbidden ", 403)
}

func (o *GetEventSpecificUserV2HandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventSpecificUserV2HandlerNotFound creates a GetEventSpecificUserV2HandlerNotFound with default headers values
func NewGetEventSpecificUserV2HandlerNotFound() *GetEventSpecificUserV2HandlerNotFound {
	return &GetEventSpecificUserV2HandlerNotFound{}
}

/*GetEventSpecificUserV2HandlerNotFound handles this case with default header values.

  Not Found
*/
type GetEventSpecificUserV2HandlerNotFound struct {
}

func (o *GetEventSpecificUserV2HandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /event/v2/admin/namespaces/{namespace}/users/{userId}/event][%d] getEventSpecificUserV2HandlerNotFound ", 404)
}

func (o *GetEventSpecificUserV2HandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventSpecificUserV2HandlerInternalServerError creates a GetEventSpecificUserV2HandlerInternalServerError with default headers values
func NewGetEventSpecificUserV2HandlerInternalServerError() *GetEventSpecificUserV2HandlerInternalServerError {
	return &GetEventSpecificUserV2HandlerInternalServerError{}
}

/*GetEventSpecificUserV2HandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetEventSpecificUserV2HandlerInternalServerError struct {
}

func (o *GetEventSpecificUserV2HandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /event/v2/admin/namespaces/{namespace}/users/{userId}/event][%d] getEventSpecificUserV2HandlerInternalServerError ", 500)
}

func (o *GetEventSpecificUserV2HandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetEventSpecificUserV2HandlerNotImplemented creates a GetEventSpecificUserV2HandlerNotImplemented with default headers values
func NewGetEventSpecificUserV2HandlerNotImplemented() *GetEventSpecificUserV2HandlerNotImplemented {
	return &GetEventSpecificUserV2HandlerNotImplemented{}
}

/*GetEventSpecificUserV2HandlerNotImplemented handles this case with default header values.

  Internal Server Error
*/
type GetEventSpecificUserV2HandlerNotImplemented struct {
}

func (o *GetEventSpecificUserV2HandlerNotImplemented) Error() string {
	return fmt.Sprintf("[GET /event/v2/admin/namespaces/{namespace}/users/{userId}/event][%d] getEventSpecificUserV2HandlerNotImplemented ", 501)
}

func (o *GetEventSpecificUserV2HandlerNotImplemented) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
