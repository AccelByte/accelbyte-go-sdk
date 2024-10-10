// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// CheckUserAvailabilityReader is a Reader for the CheckUserAvailability structure.
type CheckUserAvailabilityReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CheckUserAvailabilityReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewCheckUserAvailabilityNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCheckUserAvailabilityBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewCheckUserAvailabilityNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewCheckUserAvailabilityUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/users/availability returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCheckUserAvailabilityNoContent creates a CheckUserAvailabilityNoContent with default headers values
func NewCheckUserAvailabilityNoContent() *CheckUserAvailabilityNoContent {
	return &CheckUserAvailabilityNoContent{}
}

/*CheckUserAvailabilityNoContent handles this case with default header values.

  No Content
*/
type CheckUserAvailabilityNoContent struct {
}

func (o *CheckUserAvailabilityNoContent) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/availability][%d] checkUserAvailabilityNoContent ", 204)
}

func (o *CheckUserAvailabilityNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCheckUserAvailabilityBadRequest creates a CheckUserAvailabilityBadRequest with default headers values
func NewCheckUserAvailabilityBadRequest() *CheckUserAvailabilityBadRequest {
	return &CheckUserAvailabilityBadRequest{}
}

/*CheckUserAvailabilityBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CheckUserAvailabilityBadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CheckUserAvailabilityBadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/availability][%d] checkUserAvailabilityBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CheckUserAvailabilityBadRequest) ToJSONString() string {
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

func (o *CheckUserAvailabilityBadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CheckUserAvailabilityBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewCheckUserAvailabilityNotFound creates a CheckUserAvailabilityNotFound with default headers values
func NewCheckUserAvailabilityNotFound() *CheckUserAvailabilityNotFound {
	return &CheckUserAvailabilityNotFound{}
}

/*CheckUserAvailabilityNotFound handles this case with default header values.

  Not Found
*/
type CheckUserAvailabilityNotFound struct {
}

func (o *CheckUserAvailabilityNotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/availability][%d] checkUserAvailabilityNotFound ", 404)
}

func (o *CheckUserAvailabilityNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewCheckUserAvailabilityUnprocessableEntity creates a CheckUserAvailabilityUnprocessableEntity with default headers values
func NewCheckUserAvailabilityUnprocessableEntity() *CheckUserAvailabilityUnprocessableEntity {
	return &CheckUserAvailabilityUnprocessableEntity{}
}

/*CheckUserAvailabilityUnprocessableEntity handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type CheckUserAvailabilityUnprocessableEntity struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *CheckUserAvailabilityUnprocessableEntity) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/users/availability][%d] checkUserAvailabilityUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *CheckUserAvailabilityUnprocessableEntity) ToJSONString() string {
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

func (o *CheckUserAvailabilityUnprocessableEntity) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *CheckUserAvailabilityUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
