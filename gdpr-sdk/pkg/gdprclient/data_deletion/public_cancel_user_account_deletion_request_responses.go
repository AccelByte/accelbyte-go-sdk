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

// PublicCancelUserAccountDeletionRequestReader is a Reader for the PublicCancelUserAccountDeletionRequest structure.
type PublicCancelUserAccountDeletionRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicCancelUserAccountDeletionRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewPublicCancelUserAccountDeletionRequestNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicCancelUserAccountDeletionRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicCancelUserAccountDeletionRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicCancelUserAccountDeletionRequestNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicCancelUserAccountDeletionRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /gdpr/public/namespaces/{namespace}/users/{userId}/deletions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicCancelUserAccountDeletionRequestNoContent creates a PublicCancelUserAccountDeletionRequestNoContent with default headers values
func NewPublicCancelUserAccountDeletionRequestNoContent() *PublicCancelUserAccountDeletionRequestNoContent {
	return &PublicCancelUserAccountDeletionRequestNoContent{}
}

/*PublicCancelUserAccountDeletionRequestNoContent handles this case with default header values.

  No Content
*/
type PublicCancelUserAccountDeletionRequestNoContent struct {
}

func (o *PublicCancelUserAccountDeletionRequestNoContent) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/namespaces/{namespace}/users/{userId}/deletions][%d] publicCancelUserAccountDeletionRequestNoContent ", 204)
}

func (o *PublicCancelUserAccountDeletionRequestNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicCancelUserAccountDeletionRequestUnauthorized creates a PublicCancelUserAccountDeletionRequestUnauthorized with default headers values
func NewPublicCancelUserAccountDeletionRequestUnauthorized() *PublicCancelUserAccountDeletionRequestUnauthorized {
	return &PublicCancelUserAccountDeletionRequestUnauthorized{}
}

/*PublicCancelUserAccountDeletionRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicCancelUserAccountDeletionRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicCancelUserAccountDeletionRequestUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/namespaces/{namespace}/users/{userId}/deletions][%d] publicCancelUserAccountDeletionRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicCancelUserAccountDeletionRequestUnauthorized) ToJSONString() string {
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

func (o *PublicCancelUserAccountDeletionRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCancelUserAccountDeletionRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCancelUserAccountDeletionRequestForbidden creates a PublicCancelUserAccountDeletionRequestForbidden with default headers values
func NewPublicCancelUserAccountDeletionRequestForbidden() *PublicCancelUserAccountDeletionRequestForbidden {
	return &PublicCancelUserAccountDeletionRequestForbidden{}
}

/*PublicCancelUserAccountDeletionRequestForbidden handles this case with default header values.

  Forbidden
*/
type PublicCancelUserAccountDeletionRequestForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicCancelUserAccountDeletionRequestForbidden) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/namespaces/{namespace}/users/{userId}/deletions][%d] publicCancelUserAccountDeletionRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicCancelUserAccountDeletionRequestForbidden) ToJSONString() string {
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

func (o *PublicCancelUserAccountDeletionRequestForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCancelUserAccountDeletionRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCancelUserAccountDeletionRequestNotFound creates a PublicCancelUserAccountDeletionRequestNotFound with default headers values
func NewPublicCancelUserAccountDeletionRequestNotFound() *PublicCancelUserAccountDeletionRequestNotFound {
	return &PublicCancelUserAccountDeletionRequestNotFound{}
}

/*PublicCancelUserAccountDeletionRequestNotFound handles this case with default header values.

  Not Found
*/
type PublicCancelUserAccountDeletionRequestNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicCancelUserAccountDeletionRequestNotFound) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/namespaces/{namespace}/users/{userId}/deletions][%d] publicCancelUserAccountDeletionRequestNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicCancelUserAccountDeletionRequestNotFound) ToJSONString() string {
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

func (o *PublicCancelUserAccountDeletionRequestNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCancelUserAccountDeletionRequestNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicCancelUserAccountDeletionRequestInternalServerError creates a PublicCancelUserAccountDeletionRequestInternalServerError with default headers values
func NewPublicCancelUserAccountDeletionRequestInternalServerError() *PublicCancelUserAccountDeletionRequestInternalServerError {
	return &PublicCancelUserAccountDeletionRequestInternalServerError{}
}

/*PublicCancelUserAccountDeletionRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicCancelUserAccountDeletionRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicCancelUserAccountDeletionRequestInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /gdpr/public/namespaces/{namespace}/users/{userId}/deletions][%d] publicCancelUserAccountDeletionRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicCancelUserAccountDeletionRequestInternalServerError) ToJSONString() string {
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

func (o *PublicCancelUserAccountDeletionRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicCancelUserAccountDeletionRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
