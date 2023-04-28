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

// PublicSubmitUserAccountDeletionRequestReader is a Reader for the PublicSubmitUserAccountDeletionRequest structure.
type PublicSubmitUserAccountDeletionRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSubmitUserAccountDeletionRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicSubmitUserAccountDeletionRequestCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicSubmitUserAccountDeletionRequestBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicSubmitUserAccountDeletionRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicSubmitUserAccountDeletionRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicSubmitUserAccountDeletionRequestNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicSubmitUserAccountDeletionRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /gdpr/public/namespaces/{namespace}/users/{userId}/deletions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSubmitUserAccountDeletionRequestCreated creates a PublicSubmitUserAccountDeletionRequestCreated with default headers values
func NewPublicSubmitUserAccountDeletionRequestCreated() *PublicSubmitUserAccountDeletionRequestCreated {
	return &PublicSubmitUserAccountDeletionRequestCreated{}
}

/*PublicSubmitUserAccountDeletionRequestCreated handles this case with default header values.

  Created
*/
type PublicSubmitUserAccountDeletionRequestCreated struct {
	Payload *gdprclientmodels.ModelsRequestDeleteResponse
}

func (o *PublicSubmitUserAccountDeletionRequestCreated) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/namespaces/{namespace}/users/{userId}/deletions][%d] publicSubmitUserAccountDeletionRequestCreated  %+v", 201, o.ToJSONString())
}

func (o *PublicSubmitUserAccountDeletionRequestCreated) ToJSONString() string {
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

func (o *PublicSubmitUserAccountDeletionRequestCreated) GetPayload() *gdprclientmodels.ModelsRequestDeleteResponse {
	return o.Payload
}

func (o *PublicSubmitUserAccountDeletionRequestCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ModelsRequestDeleteResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicSubmitUserAccountDeletionRequestBadRequest creates a PublicSubmitUserAccountDeletionRequestBadRequest with default headers values
func NewPublicSubmitUserAccountDeletionRequestBadRequest() *PublicSubmitUserAccountDeletionRequestBadRequest {
	return &PublicSubmitUserAccountDeletionRequestBadRequest{}
}

/*PublicSubmitUserAccountDeletionRequestBadRequest handles this case with default header values.

  Bad Request
*/
type PublicSubmitUserAccountDeletionRequestBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitUserAccountDeletionRequestBadRequest) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/namespaces/{namespace}/users/{userId}/deletions][%d] publicSubmitUserAccountDeletionRequestBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicSubmitUserAccountDeletionRequestBadRequest) ToJSONString() string {
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

func (o *PublicSubmitUserAccountDeletionRequestBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitUserAccountDeletionRequestBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSubmitUserAccountDeletionRequestUnauthorized creates a PublicSubmitUserAccountDeletionRequestUnauthorized with default headers values
func NewPublicSubmitUserAccountDeletionRequestUnauthorized() *PublicSubmitUserAccountDeletionRequestUnauthorized {
	return &PublicSubmitUserAccountDeletionRequestUnauthorized{}
}

/*PublicSubmitUserAccountDeletionRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicSubmitUserAccountDeletionRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitUserAccountDeletionRequestUnauthorized) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/namespaces/{namespace}/users/{userId}/deletions][%d] publicSubmitUserAccountDeletionRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicSubmitUserAccountDeletionRequestUnauthorized) ToJSONString() string {
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

func (o *PublicSubmitUserAccountDeletionRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitUserAccountDeletionRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSubmitUserAccountDeletionRequestForbidden creates a PublicSubmitUserAccountDeletionRequestForbidden with default headers values
func NewPublicSubmitUserAccountDeletionRequestForbidden() *PublicSubmitUserAccountDeletionRequestForbidden {
	return &PublicSubmitUserAccountDeletionRequestForbidden{}
}

/*PublicSubmitUserAccountDeletionRequestForbidden handles this case with default header values.

  Forbidden
*/
type PublicSubmitUserAccountDeletionRequestForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitUserAccountDeletionRequestForbidden) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/namespaces/{namespace}/users/{userId}/deletions][%d] publicSubmitUserAccountDeletionRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicSubmitUserAccountDeletionRequestForbidden) ToJSONString() string {
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

func (o *PublicSubmitUserAccountDeletionRequestForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitUserAccountDeletionRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSubmitUserAccountDeletionRequestNotFound creates a PublicSubmitUserAccountDeletionRequestNotFound with default headers values
func NewPublicSubmitUserAccountDeletionRequestNotFound() *PublicSubmitUserAccountDeletionRequestNotFound {
	return &PublicSubmitUserAccountDeletionRequestNotFound{}
}

/*PublicSubmitUserAccountDeletionRequestNotFound handles this case with default header values.

  Not Found
*/
type PublicSubmitUserAccountDeletionRequestNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitUserAccountDeletionRequestNotFound) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/namespaces/{namespace}/users/{userId}/deletions][%d] publicSubmitUserAccountDeletionRequestNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicSubmitUserAccountDeletionRequestNotFound) ToJSONString() string {
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

func (o *PublicSubmitUserAccountDeletionRequestNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitUserAccountDeletionRequestNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSubmitUserAccountDeletionRequestInternalServerError creates a PublicSubmitUserAccountDeletionRequestInternalServerError with default headers values
func NewPublicSubmitUserAccountDeletionRequestInternalServerError() *PublicSubmitUserAccountDeletionRequestInternalServerError {
	return &PublicSubmitUserAccountDeletionRequestInternalServerError{}
}

/*PublicSubmitUserAccountDeletionRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicSubmitUserAccountDeletionRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitUserAccountDeletionRequestInternalServerError) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/namespaces/{namespace}/users/{userId}/deletions][%d] publicSubmitUserAccountDeletionRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicSubmitUserAccountDeletionRequestInternalServerError) ToJSONString() string {
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

func (o *PublicSubmitUserAccountDeletionRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitUserAccountDeletionRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
