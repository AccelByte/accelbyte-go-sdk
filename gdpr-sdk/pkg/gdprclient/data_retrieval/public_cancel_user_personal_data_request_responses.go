// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/gdpr-sdk/pkg/gdprclientmodels"
)

// PublicCancelUserPersonalDataRequestReader is a Reader for the PublicCancelUserPersonalDataRequest structure.
type PublicCancelUserPersonalDataRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicCancelUserPersonalDataRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicCancelUserPersonalDataRequestNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicCancelUserPersonalDataRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicCancelUserPersonalDataRequestNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicCancelUserPersonalDataRequestConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicCancelUserPersonalDataRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicCancelUserPersonalDataRequestNoContent creates a PublicCancelUserPersonalDataRequestNoContent with default headers values
func NewPublicCancelUserPersonalDataRequestNoContent() *PublicCancelUserPersonalDataRequestNoContent {
	return &PublicCancelUserPersonalDataRequestNoContent{}
}

/*PublicCancelUserPersonalDataRequestNoContent handles this case with default header values.

  No Content
*/
type PublicCancelUserPersonalDataRequestNoContent struct {
}

func (o *PublicCancelUserPersonalDataRequestNoContent) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}][%d] publicCancelUserPersonalDataRequestNoContent ", 204)
}

func (o *PublicCancelUserPersonalDataRequestNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicCancelUserPersonalDataRequestUnauthorized creates a PublicCancelUserPersonalDataRequestUnauthorized with default headers values
func NewPublicCancelUserPersonalDataRequestUnauthorized() *PublicCancelUserPersonalDataRequestUnauthorized {
	return &PublicCancelUserPersonalDataRequestUnauthorized{}
}

/*PublicCancelUserPersonalDataRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicCancelUserPersonalDataRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicCancelUserPersonalDataRequestUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}][%d] publicCancelUserPersonalDataRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicCancelUserPersonalDataRequestUnauthorized) ToJSONString() string {
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

func (o *PublicCancelUserPersonalDataRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCancelUserPersonalDataRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicCancelUserPersonalDataRequestNotFound creates a PublicCancelUserPersonalDataRequestNotFound with default headers values
func NewPublicCancelUserPersonalDataRequestNotFound() *PublicCancelUserPersonalDataRequestNotFound {
	return &PublicCancelUserPersonalDataRequestNotFound{}
}

/*PublicCancelUserPersonalDataRequestNotFound handles this case with default header values.

  Not Found
*/
type PublicCancelUserPersonalDataRequestNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicCancelUserPersonalDataRequestNotFound) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}][%d] publicCancelUserPersonalDataRequestNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicCancelUserPersonalDataRequestNotFound) ToJSONString() string {
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

func (o *PublicCancelUserPersonalDataRequestNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCancelUserPersonalDataRequestNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicCancelUserPersonalDataRequestConflict creates a PublicCancelUserPersonalDataRequestConflict with default headers values
func NewPublicCancelUserPersonalDataRequestConflict() *PublicCancelUserPersonalDataRequestConflict {
	return &PublicCancelUserPersonalDataRequestConflict{}
}

/*PublicCancelUserPersonalDataRequestConflict handles this case with default header values.

  Conflict
*/
type PublicCancelUserPersonalDataRequestConflict struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicCancelUserPersonalDataRequestConflict) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}][%d] publicCancelUserPersonalDataRequestConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicCancelUserPersonalDataRequestConflict) ToJSONString() string {
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

func (o *PublicCancelUserPersonalDataRequestConflict) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCancelUserPersonalDataRequestConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicCancelUserPersonalDataRequestInternalServerError creates a PublicCancelUserPersonalDataRequestInternalServerError with default headers values
func NewPublicCancelUserPersonalDataRequestInternalServerError() *PublicCancelUserPersonalDataRequestInternalServerError {
	return &PublicCancelUserPersonalDataRequestInternalServerError{}
}

/*PublicCancelUserPersonalDataRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicCancelUserPersonalDataRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicCancelUserPersonalDataRequestInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/namespaces/{namespace}/users/{userId}/requests/{requestDate}][%d] publicCancelUserPersonalDataRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicCancelUserPersonalDataRequestInternalServerError) ToJSONString() string {
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

func (o *PublicCancelUserPersonalDataRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCancelUserPersonalDataRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
