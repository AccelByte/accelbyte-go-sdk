// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval_headless

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

// PublicCancelMyPersonalDataRequestReader is a Reader for the PublicCancelMyPersonalDataRequest structure.
type PublicCancelMyPersonalDataRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicCancelMyPersonalDataRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicCancelMyPersonalDataRequestNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicCancelMyPersonalDataRequestBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicCancelMyPersonalDataRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicCancelMyPersonalDataRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicCancelMyPersonalDataRequestNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicCancelMyPersonalDataRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /gdpr/public/users/me/requests/{requestDate} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicCancelMyPersonalDataRequestNoContent creates a PublicCancelMyPersonalDataRequestNoContent with default headers values
func NewPublicCancelMyPersonalDataRequestNoContent() *PublicCancelMyPersonalDataRequestNoContent {
	return &PublicCancelMyPersonalDataRequestNoContent{}
}

/*PublicCancelMyPersonalDataRequestNoContent handles this case with default header values.

  No Content
*/
type PublicCancelMyPersonalDataRequestNoContent struct {
}

func (o *PublicCancelMyPersonalDataRequestNoContent) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/users/me/requests/{requestDate}][%d] publicCancelMyPersonalDataRequestNoContent ", 204)
}

func (o *PublicCancelMyPersonalDataRequestNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicCancelMyPersonalDataRequestBadRequest creates a PublicCancelMyPersonalDataRequestBadRequest with default headers values
func NewPublicCancelMyPersonalDataRequestBadRequest() *PublicCancelMyPersonalDataRequestBadRequest {
	return &PublicCancelMyPersonalDataRequestBadRequest{}
}

/*PublicCancelMyPersonalDataRequestBadRequest handles this case with default header values.

  Bad Request
*/
type PublicCancelMyPersonalDataRequestBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicCancelMyPersonalDataRequestBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/users/me/requests/{requestDate}][%d] publicCancelMyPersonalDataRequestBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicCancelMyPersonalDataRequestBadRequest) ToJSONString() string {
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

func (o *PublicCancelMyPersonalDataRequestBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCancelMyPersonalDataRequestBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCancelMyPersonalDataRequestUnauthorized creates a PublicCancelMyPersonalDataRequestUnauthorized with default headers values
func NewPublicCancelMyPersonalDataRequestUnauthorized() *PublicCancelMyPersonalDataRequestUnauthorized {
	return &PublicCancelMyPersonalDataRequestUnauthorized{}
}

/*PublicCancelMyPersonalDataRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicCancelMyPersonalDataRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicCancelMyPersonalDataRequestUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/users/me/requests/{requestDate}][%d] publicCancelMyPersonalDataRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicCancelMyPersonalDataRequestUnauthorized) ToJSONString() string {
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

func (o *PublicCancelMyPersonalDataRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCancelMyPersonalDataRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCancelMyPersonalDataRequestForbidden creates a PublicCancelMyPersonalDataRequestForbidden with default headers values
func NewPublicCancelMyPersonalDataRequestForbidden() *PublicCancelMyPersonalDataRequestForbidden {
	return &PublicCancelMyPersonalDataRequestForbidden{}
}

/*PublicCancelMyPersonalDataRequestForbidden handles this case with default header values.

  Forbidden
*/
type PublicCancelMyPersonalDataRequestForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicCancelMyPersonalDataRequestForbidden) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/users/me/requests/{requestDate}][%d] publicCancelMyPersonalDataRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicCancelMyPersonalDataRequestForbidden) ToJSONString() string {
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

func (o *PublicCancelMyPersonalDataRequestForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCancelMyPersonalDataRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCancelMyPersonalDataRequestNotFound creates a PublicCancelMyPersonalDataRequestNotFound with default headers values
func NewPublicCancelMyPersonalDataRequestNotFound() *PublicCancelMyPersonalDataRequestNotFound {
	return &PublicCancelMyPersonalDataRequestNotFound{}
}

/*PublicCancelMyPersonalDataRequestNotFound handles this case with default header values.

  Not Found
*/
type PublicCancelMyPersonalDataRequestNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicCancelMyPersonalDataRequestNotFound) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/users/me/requests/{requestDate}][%d] publicCancelMyPersonalDataRequestNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicCancelMyPersonalDataRequestNotFound) ToJSONString() string {
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

func (o *PublicCancelMyPersonalDataRequestNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCancelMyPersonalDataRequestNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicCancelMyPersonalDataRequestInternalServerError creates a PublicCancelMyPersonalDataRequestInternalServerError with default headers values
func NewPublicCancelMyPersonalDataRequestInternalServerError() *PublicCancelMyPersonalDataRequestInternalServerError {
	return &PublicCancelMyPersonalDataRequestInternalServerError{}
}

/*PublicCancelMyPersonalDataRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicCancelMyPersonalDataRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicCancelMyPersonalDataRequestInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/users/me/requests/{requestDate}][%d] publicCancelMyPersonalDataRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicCancelMyPersonalDataRequestInternalServerError) ToJSONString() string {
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

func (o *PublicCancelMyPersonalDataRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCancelMyPersonalDataRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
