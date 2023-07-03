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

// PublicCancelMyAccountDeletionRequestReader is a Reader for the PublicCancelMyAccountDeletionRequest structure.
type PublicCancelMyAccountDeletionRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicCancelMyAccountDeletionRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicCancelMyAccountDeletionRequestNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicCancelMyAccountDeletionRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicCancelMyAccountDeletionRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicCancelMyAccountDeletionRequestNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicCancelMyAccountDeletionRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /gdpr/public/users/me/deletions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicCancelMyAccountDeletionRequestNoContent creates a PublicCancelMyAccountDeletionRequestNoContent with default headers values
func NewPublicCancelMyAccountDeletionRequestNoContent() *PublicCancelMyAccountDeletionRequestNoContent {
	return &PublicCancelMyAccountDeletionRequestNoContent{}
}

/*PublicCancelMyAccountDeletionRequestNoContent handles this case with default header values.

  No Content
*/
type PublicCancelMyAccountDeletionRequestNoContent struct {
}

func (o *PublicCancelMyAccountDeletionRequestNoContent) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/users/me/deletions][%d] publicCancelMyAccountDeletionRequestNoContent ", 204)
}

func (o *PublicCancelMyAccountDeletionRequestNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicCancelMyAccountDeletionRequestUnauthorized creates a PublicCancelMyAccountDeletionRequestUnauthorized with default headers values
func NewPublicCancelMyAccountDeletionRequestUnauthorized() *PublicCancelMyAccountDeletionRequestUnauthorized {
	return &PublicCancelMyAccountDeletionRequestUnauthorized{}
}

/*PublicCancelMyAccountDeletionRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicCancelMyAccountDeletionRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicCancelMyAccountDeletionRequestUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/users/me/deletions][%d] publicCancelMyAccountDeletionRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicCancelMyAccountDeletionRequestUnauthorized) ToJSONString() string {
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

func (o *PublicCancelMyAccountDeletionRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCancelMyAccountDeletionRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCancelMyAccountDeletionRequestForbidden creates a PublicCancelMyAccountDeletionRequestForbidden with default headers values
func NewPublicCancelMyAccountDeletionRequestForbidden() *PublicCancelMyAccountDeletionRequestForbidden {
	return &PublicCancelMyAccountDeletionRequestForbidden{}
}

/*PublicCancelMyAccountDeletionRequestForbidden handles this case with default header values.

  Forbidden
*/
type PublicCancelMyAccountDeletionRequestForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicCancelMyAccountDeletionRequestForbidden) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/users/me/deletions][%d] publicCancelMyAccountDeletionRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicCancelMyAccountDeletionRequestForbidden) ToJSONString() string {
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

func (o *PublicCancelMyAccountDeletionRequestForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCancelMyAccountDeletionRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCancelMyAccountDeletionRequestNotFound creates a PublicCancelMyAccountDeletionRequestNotFound with default headers values
func NewPublicCancelMyAccountDeletionRequestNotFound() *PublicCancelMyAccountDeletionRequestNotFound {
	return &PublicCancelMyAccountDeletionRequestNotFound{}
}

/*PublicCancelMyAccountDeletionRequestNotFound handles this case with default header values.

  Not Found
*/
type PublicCancelMyAccountDeletionRequestNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicCancelMyAccountDeletionRequestNotFound) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/users/me/deletions][%d] publicCancelMyAccountDeletionRequestNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicCancelMyAccountDeletionRequestNotFound) ToJSONString() string {
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

func (o *PublicCancelMyAccountDeletionRequestNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCancelMyAccountDeletionRequestNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCancelMyAccountDeletionRequestInternalServerError creates a PublicCancelMyAccountDeletionRequestInternalServerError with default headers values
func NewPublicCancelMyAccountDeletionRequestInternalServerError() *PublicCancelMyAccountDeletionRequestInternalServerError {
	return &PublicCancelMyAccountDeletionRequestInternalServerError{}
}

/*PublicCancelMyAccountDeletionRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicCancelMyAccountDeletionRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicCancelMyAccountDeletionRequestInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/users/me/deletions][%d] publicCancelMyAccountDeletionRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicCancelMyAccountDeletionRequestInternalServerError) ToJSONString() string {
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

func (o *PublicCancelMyAccountDeletionRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCancelMyAccountDeletionRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
