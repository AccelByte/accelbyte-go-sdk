// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_information

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

// GetUserActivitiesHandlerReader is a Reader for the GetUserActivitiesHandler structure.
type GetUserActivitiesHandlerReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetUserActivitiesHandlerReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetUserActivitiesHandlerOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetUserActivitiesHandlerBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetUserActivitiesHandlerUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetUserActivitiesHandlerForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetUserActivitiesHandlerNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetUserActivitiesHandlerInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /event/namespaces/{namespace}/users/{userId}/activities returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetUserActivitiesHandlerOK creates a GetUserActivitiesHandlerOK with default headers values
func NewGetUserActivitiesHandlerOK() *GetUserActivitiesHandlerOK {
	return &GetUserActivitiesHandlerOK{}
}

/*GetUserActivitiesHandlerOK handles this case with default header values.

  OK
*/
type GetUserActivitiesHandlerOK struct {
	Payload *eventlogclientmodels.ModelsEventResponse
}

func (o *GetUserActivitiesHandlerOK) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/activities][%d] getUserActivitiesHandlerOK  %+v", 200, o.ToJSONString())
}

func (o *GetUserActivitiesHandlerOK) ToJSONString() string {
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

func (o *GetUserActivitiesHandlerOK) GetPayload() *eventlogclientmodels.ModelsEventResponse {
	return o.Payload
}

func (o *GetUserActivitiesHandlerOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetUserActivitiesHandlerBadRequest creates a GetUserActivitiesHandlerBadRequest with default headers values
func NewGetUserActivitiesHandlerBadRequest() *GetUserActivitiesHandlerBadRequest {
	return &GetUserActivitiesHandlerBadRequest{}
}

/*GetUserActivitiesHandlerBadRequest handles this case with default header values.

  Bad Request
*/
type GetUserActivitiesHandlerBadRequest struct {
}

func (o *GetUserActivitiesHandlerBadRequest) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/activities][%d] getUserActivitiesHandlerBadRequest ", 400)
}

func (o *GetUserActivitiesHandlerBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetUserActivitiesHandlerUnauthorized creates a GetUserActivitiesHandlerUnauthorized with default headers values
func NewGetUserActivitiesHandlerUnauthorized() *GetUserActivitiesHandlerUnauthorized {
	return &GetUserActivitiesHandlerUnauthorized{}
}

/*GetUserActivitiesHandlerUnauthorized handles this case with default header values.

  Unauthorized
*/
type GetUserActivitiesHandlerUnauthorized struct {
}

func (o *GetUserActivitiesHandlerUnauthorized) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/activities][%d] getUserActivitiesHandlerUnauthorized ", 401)
}

func (o *GetUserActivitiesHandlerUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetUserActivitiesHandlerForbidden creates a GetUserActivitiesHandlerForbidden with default headers values
func NewGetUserActivitiesHandlerForbidden() *GetUserActivitiesHandlerForbidden {
	return &GetUserActivitiesHandlerForbidden{}
}

/*GetUserActivitiesHandlerForbidden handles this case with default header values.

  Forbidden
*/
type GetUserActivitiesHandlerForbidden struct {
}

func (o *GetUserActivitiesHandlerForbidden) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/activities][%d] getUserActivitiesHandlerForbidden ", 403)
}

func (o *GetUserActivitiesHandlerForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetUserActivitiesHandlerNotFound creates a GetUserActivitiesHandlerNotFound with default headers values
func NewGetUserActivitiesHandlerNotFound() *GetUserActivitiesHandlerNotFound {
	return &GetUserActivitiesHandlerNotFound{}
}

/*GetUserActivitiesHandlerNotFound handles this case with default header values.

  Not Found
*/
type GetUserActivitiesHandlerNotFound struct {
}

func (o *GetUserActivitiesHandlerNotFound) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/activities][%d] getUserActivitiesHandlerNotFound ", 404)
}

func (o *GetUserActivitiesHandlerNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewGetUserActivitiesHandlerInternalServerError creates a GetUserActivitiesHandlerInternalServerError with default headers values
func NewGetUserActivitiesHandlerInternalServerError() *GetUserActivitiesHandlerInternalServerError {
	return &GetUserActivitiesHandlerInternalServerError{}
}

/*GetUserActivitiesHandlerInternalServerError handles this case with default header values.

  Internal Server Error
*/
type GetUserActivitiesHandlerInternalServerError struct {
}

func (o *GetUserActivitiesHandlerInternalServerError) Error() string {
	return fmt.Sprintf("[GET /event/namespaces/{namespace}/users/{userId}/activities][%d] getUserActivitiesHandlerInternalServerError ", 500)
}

func (o *GetUserActivitiesHandlerInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
