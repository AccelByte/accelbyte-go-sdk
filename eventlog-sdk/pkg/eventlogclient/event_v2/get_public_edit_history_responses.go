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

// GetPublicEditHistoryReader is a Reader for the GetPublicEditHistory structure.
type GetPublicEditHistoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetPublicEditHistoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetPublicEditHistoryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetPublicEditHistoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetPublicEditHistoryUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetPublicEditHistoryForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetPublicEditHistoryNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetPublicEditHistoryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 501:
		result := NewGetPublicEditHistoryNotImplemented()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/v2/public/namespaces/{namespace}/users/{userId}/edithistory returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetPublicEditHistoryOK creates a GetPublicEditHistoryOK with default headers values
func NewGetPublicEditHistoryOK() *GetPublicEditHistoryOK {
	return &GetPublicEditHistoryOK{}
}

/*GetPublicEditHistoryOK handles this case with default header values.

  OK
*/
type GetPublicEditHistoryOK struct {
	Payload *eventlogclientmodels.ModelsEventResponseV2
}

func (o *GetPublicEditHistoryOK) Error() string {
	return fmt.Sprintf("[GET /event/v2/public/namespaces/{namespace}/users/{userId}/edithistory][%d] getPublicEditHistoryOK  %+v", 200, o.ToJSONString())
}

func (o *GetPublicEditHistoryOK) ToJSONString() string {
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

func (o *GetPublicEditHistoryOK) GetPayload() *eventlogclientmodels.ModelsEventResponseV2 {
	return o.Payload
}

func (o *GetPublicEditHistoryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetPublicEditHistoryBadRequest creates a GetPublicEditHistoryBadRequest with default headers values
func NewGetPublicEditHistoryBadRequest() *GetPublicEditHistoryBadRequest {
	return &GetPublicEditHistoryBadRequest{}
}

/*GetPublicEditHistoryBadRequest handles this case with default header values.

  Bad Request
*/
type GetPublicEditHistoryBadRequest struct {
}

func (o *GetPublicEditHistoryBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/v2/public/namespaces/{namespace}/users/{userId}/edithistory][%d] getPublicEditHistoryBadRequest ", 400)
}

func (o *GetPublicEditHistoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetPublicEditHistoryUnauthorized creates a GetPublicEditHistoryUnauthorized with default headers values
func NewGetPublicEditHistoryUnauthorized() *GetPublicEditHistoryUnauthorized {
	return &GetPublicEditHistoryUnauthorized{}
}

/*GetPublicEditHistoryUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetPublicEditHistoryUnauthorized struct {
}

func (o *GetPublicEditHistoryUnauthorized) Error() string {
	return fmt.Sprintf("[GET /event/v2/public/namespaces/{namespace}/users/{userId}/edithistory][%d] getPublicEditHistoryUnauthorized ", 401)
}

func (o *GetPublicEditHistoryUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetPublicEditHistoryForbidden creates a GetPublicEditHistoryForbidden with default headers values
func NewGetPublicEditHistoryForbidden() *GetPublicEditHistoryForbidden {
	return &GetPublicEditHistoryForbidden{}
}

/*GetPublicEditHistoryForbidden handles this case with default header values.

  Forbidden
*/
type GetPublicEditHistoryForbidden struct {
}

func (o *GetPublicEditHistoryForbidden) Error() string {
	return fmt.Sprintf("[GET /event/v2/public/namespaces/{namespace}/users/{userId}/edithistory][%d] getPublicEditHistoryForbidden ", 403)
}

func (o *GetPublicEditHistoryForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetPublicEditHistoryNotFound creates a GetPublicEditHistoryNotFound with default headers values
func NewGetPublicEditHistoryNotFound() *GetPublicEditHistoryNotFound {
	return &GetPublicEditHistoryNotFound{}
}

/*GetPublicEditHistoryNotFound handles this case with default header values.

  Not Found
*/
type GetPublicEditHistoryNotFound struct {
}

func (o *GetPublicEditHistoryNotFound) Error() string {
	return fmt.Sprintf("[GET /event/v2/public/namespaces/{namespace}/users/{userId}/edithistory][%d] getPublicEditHistoryNotFound ", 404)
}

func (o *GetPublicEditHistoryNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetPublicEditHistoryInternalServerError creates a GetPublicEditHistoryInternalServerError with default headers values
func NewGetPublicEditHistoryInternalServerError() *GetPublicEditHistoryInternalServerError {
	return &GetPublicEditHistoryInternalServerError{}
}

/*GetPublicEditHistoryInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetPublicEditHistoryInternalServerError struct {
}

func (o *GetPublicEditHistoryInternalServerError) Error() string {
	return fmt.Sprintf("[GET /event/v2/public/namespaces/{namespace}/users/{userId}/edithistory][%d] getPublicEditHistoryInternalServerError ", 500)
}

func (o *GetPublicEditHistoryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetPublicEditHistoryNotImplemented creates a GetPublicEditHistoryNotImplemented with default headers values
func NewGetPublicEditHistoryNotImplemented() *GetPublicEditHistoryNotImplemented {
	return &GetPublicEditHistoryNotImplemented{}
}

/*GetPublicEditHistoryNotImplemented handles this case with default header values.

  Not Implemented
*/
type GetPublicEditHistoryNotImplemented struct {
}

func (o *GetPublicEditHistoryNotImplemented) Error() string {
	return fmt.Sprintf("[GET /event/v2/public/namespaces/{namespace}/users/{userId}/edithistory][%d] getPublicEditHistoryNotImplemented ", 501)
}

func (o *GetPublicEditHistoryNotImplemented) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
