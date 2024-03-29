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

// GetUserEventsV2PublicReader is a Reader for the GetUserEventsV2Public structure.
type GetUserEventsV2PublicReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserEventsV2PublicReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserEventsV2PublicOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserEventsV2PublicBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserEventsV2PublicUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserEventsV2PublicForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserEventsV2PublicNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserEventsV2PublicInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 501:
		result := NewGetUserEventsV2PublicNotImplemented()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/v2/public/namespaces/{namespace}/users/{userId}/event returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserEventsV2PublicOK creates a GetUserEventsV2PublicOK with default headers values
func NewGetUserEventsV2PublicOK() *GetUserEventsV2PublicOK {
	return &GetUserEventsV2PublicOK{}
}

/*GetUserEventsV2PublicOK handles this case with default header values.

  OK
*/
type GetUserEventsV2PublicOK struct {
	Payload *eventlogclientmodels.ModelsEventResponseV2
}

func (o *GetUserEventsV2PublicOK) Error() string {
	return fmt.Sprintf("[GET /event/v2/public/namespaces/{namespace}/users/{userId}/event][%d] getUserEventsV2PublicOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserEventsV2PublicOK) ToJSONString() string {
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

func (o *GetUserEventsV2PublicOK) GetPayload() *eventlogclientmodels.ModelsEventResponseV2 {
	return o.Payload
}

func (o *GetUserEventsV2PublicOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserEventsV2PublicBadRequest creates a GetUserEventsV2PublicBadRequest with default headers values
func NewGetUserEventsV2PublicBadRequest() *GetUserEventsV2PublicBadRequest {
	return &GetUserEventsV2PublicBadRequest{}
}

/*GetUserEventsV2PublicBadRequest handles this case with default header values.

  Bad Request
*/
type GetUserEventsV2PublicBadRequest struct {
}

func (o *GetUserEventsV2PublicBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/v2/public/namespaces/{namespace}/users/{userId}/event][%d] getUserEventsV2PublicBadRequest ", 400)
}

func (o *GetUserEventsV2PublicBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetUserEventsV2PublicUnauthorized creates a GetUserEventsV2PublicUnauthorized with default headers values
func NewGetUserEventsV2PublicUnauthorized() *GetUserEventsV2PublicUnauthorized {
	return &GetUserEventsV2PublicUnauthorized{}
}

/*GetUserEventsV2PublicUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetUserEventsV2PublicUnauthorized struct {
}

func (o *GetUserEventsV2PublicUnauthorized) Error() string {
	return fmt.Sprintf("[GET /event/v2/public/namespaces/{namespace}/users/{userId}/event][%d] getUserEventsV2PublicUnauthorized ", 401)
}

func (o *GetUserEventsV2PublicUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetUserEventsV2PublicForbidden creates a GetUserEventsV2PublicForbidden with default headers values
func NewGetUserEventsV2PublicForbidden() *GetUserEventsV2PublicForbidden {
	return &GetUserEventsV2PublicForbidden{}
}

/*GetUserEventsV2PublicForbidden handles this case with default header values.

  Forbidden
*/
type GetUserEventsV2PublicForbidden struct {
}

func (o *GetUserEventsV2PublicForbidden) Error() string {
	return fmt.Sprintf("[GET /event/v2/public/namespaces/{namespace}/users/{userId}/event][%d] getUserEventsV2PublicForbidden ", 403)
}

func (o *GetUserEventsV2PublicForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetUserEventsV2PublicNotFound creates a GetUserEventsV2PublicNotFound with default headers values
func NewGetUserEventsV2PublicNotFound() *GetUserEventsV2PublicNotFound {
	return &GetUserEventsV2PublicNotFound{}
}

/*GetUserEventsV2PublicNotFound handles this case with default header values.

  Not Found
*/
type GetUserEventsV2PublicNotFound struct {
}

func (o *GetUserEventsV2PublicNotFound) Error() string {
	return fmt.Sprintf("[GET /event/v2/public/namespaces/{namespace}/users/{userId}/event][%d] getUserEventsV2PublicNotFound ", 404)
}

func (o *GetUserEventsV2PublicNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetUserEventsV2PublicInternalServerError creates a GetUserEventsV2PublicInternalServerError with default headers values
func NewGetUserEventsV2PublicInternalServerError() *GetUserEventsV2PublicInternalServerError {
	return &GetUserEventsV2PublicInternalServerError{}
}

/*GetUserEventsV2PublicInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetUserEventsV2PublicInternalServerError struct {
}

func (o *GetUserEventsV2PublicInternalServerError) Error() string {
	return fmt.Sprintf("[GET /event/v2/public/namespaces/{namespace}/users/{userId}/event][%d] getUserEventsV2PublicInternalServerError ", 500)
}

func (o *GetUserEventsV2PublicInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetUserEventsV2PublicNotImplemented creates a GetUserEventsV2PublicNotImplemented with default headers values
func NewGetUserEventsV2PublicNotImplemented() *GetUserEventsV2PublicNotImplemented {
	return &GetUserEventsV2PublicNotImplemented{}
}

/*GetUserEventsV2PublicNotImplemented handles this case with default header values.

  Internal Server Error
*/
type GetUserEventsV2PublicNotImplemented struct {
}

func (o *GetUserEventsV2PublicNotImplemented) Error() string {
	return fmt.Sprintf("[GET /event/v2/public/namespaces/{namespace}/users/{userId}/event][%d] getUserEventsV2PublicNotImplemented ", 501)
}

func (o *GetUserEventsV2PublicNotImplemented) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
