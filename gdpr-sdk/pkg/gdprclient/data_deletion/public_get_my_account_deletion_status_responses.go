// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_deletion

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

// PublicGetMyAccountDeletionStatusReader is a Reader for the PublicGetMyAccountDeletionStatus structure.
type PublicGetMyAccountDeletionStatusReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetMyAccountDeletionStatusReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetMyAccountDeletionStatusOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetMyAccountDeletionStatusUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicGetMyAccountDeletionStatusForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetMyAccountDeletionStatusInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /gdpr/public/users/me/deletions/status returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetMyAccountDeletionStatusOK creates a PublicGetMyAccountDeletionStatusOK with default headers values
func NewPublicGetMyAccountDeletionStatusOK() *PublicGetMyAccountDeletionStatusOK {
	return &PublicGetMyAccountDeletionStatusOK{}
}

/*PublicGetMyAccountDeletionStatusOK handles this case with default header values.

  OK
*/
type PublicGetMyAccountDeletionStatusOK struct {
	Payload *gdprclientmodels.ModelsDeletionStatus
}

func (o *PublicGetMyAccountDeletionStatusOK) Error() string {
	return fmt.Sprintf("[GET /gdpr/public/users/me/deletions/status][%d] publicGetMyAccountDeletionStatusOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetMyAccountDeletionStatusOK) ToJSONString() string {
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

func (o *PublicGetMyAccountDeletionStatusOK) GetPayload() *gdprclientmodels.ModelsDeletionStatus {
	return o.Payload
}

func (o *PublicGetMyAccountDeletionStatusOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ModelsDeletionStatus)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetMyAccountDeletionStatusUnauthorized creates a PublicGetMyAccountDeletionStatusUnauthorized with default headers values
func NewPublicGetMyAccountDeletionStatusUnauthorized() *PublicGetMyAccountDeletionStatusUnauthorized {
	return &PublicGetMyAccountDeletionStatusUnauthorized{}
}

/*PublicGetMyAccountDeletionStatusUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicGetMyAccountDeletionStatusUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGetMyAccountDeletionStatusUnauthorized) Error() string {
	return fmt.Sprintf("[GET /gdpr/public/users/me/deletions/status][%d] publicGetMyAccountDeletionStatusUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetMyAccountDeletionStatusUnauthorized) ToJSONString() string {
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

func (o *PublicGetMyAccountDeletionStatusUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetMyAccountDeletionStatusUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetMyAccountDeletionStatusForbidden creates a PublicGetMyAccountDeletionStatusForbidden with default headers values
func NewPublicGetMyAccountDeletionStatusForbidden() *PublicGetMyAccountDeletionStatusForbidden {
	return &PublicGetMyAccountDeletionStatusForbidden{}
}

/*PublicGetMyAccountDeletionStatusForbidden handles this case with default header values.

  Forbidden
*/
type PublicGetMyAccountDeletionStatusForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGetMyAccountDeletionStatusForbidden) Error() string {
	return fmt.Sprintf("[GET /gdpr/public/users/me/deletions/status][%d] publicGetMyAccountDeletionStatusForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicGetMyAccountDeletionStatusForbidden) ToJSONString() string {
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

func (o *PublicGetMyAccountDeletionStatusForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetMyAccountDeletionStatusForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetMyAccountDeletionStatusInternalServerError creates a PublicGetMyAccountDeletionStatusInternalServerError with default headers values
func NewPublicGetMyAccountDeletionStatusInternalServerError() *PublicGetMyAccountDeletionStatusInternalServerError {
	return &PublicGetMyAccountDeletionStatusInternalServerError{}
}

/*PublicGetMyAccountDeletionStatusInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicGetMyAccountDeletionStatusInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicGetMyAccountDeletionStatusInternalServerError) Error() string {
	return fmt.Sprintf("[GET /gdpr/public/users/me/deletions/status][%d] publicGetMyAccountDeletionStatusInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetMyAccountDeletionStatusInternalServerError) ToJSONString() string {
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

func (o *PublicGetMyAccountDeletionStatusInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicGetMyAccountDeletionStatusInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
