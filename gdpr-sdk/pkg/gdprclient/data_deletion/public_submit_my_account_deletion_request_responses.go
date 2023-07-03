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

// PublicSubmitMyAccountDeletionRequestReader is a Reader for the PublicSubmitMyAccountDeletionRequest structure.
type PublicSubmitMyAccountDeletionRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSubmitMyAccountDeletionRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicSubmitMyAccountDeletionRequestCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicSubmitMyAccountDeletionRequestBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicSubmitMyAccountDeletionRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicSubmitMyAccountDeletionRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicSubmitMyAccountDeletionRequestNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicSubmitMyAccountDeletionRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /gdpr/public/users/me/deletions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSubmitMyAccountDeletionRequestCreated creates a PublicSubmitMyAccountDeletionRequestCreated with default headers values
func NewPublicSubmitMyAccountDeletionRequestCreated() *PublicSubmitMyAccountDeletionRequestCreated {
	return &PublicSubmitMyAccountDeletionRequestCreated{}
}

/*PublicSubmitMyAccountDeletionRequestCreated handles this case with default header values.

  Created
*/
type PublicSubmitMyAccountDeletionRequestCreated struct {
	Payload *gdprclientmodels.ModelsRequestDeleteResponse
}

func (o *PublicSubmitMyAccountDeletionRequestCreated) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/deletions][%d] publicSubmitMyAccountDeletionRequestCreated  %+v", 201, o.ToJSONString())
}

func (o *PublicSubmitMyAccountDeletionRequestCreated) ToJSONString() string {
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

func (o *PublicSubmitMyAccountDeletionRequestCreated) GetPayload() *gdprclientmodels.ModelsRequestDeleteResponse {
	return o.Payload
}

func (o *PublicSubmitMyAccountDeletionRequestCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSubmitMyAccountDeletionRequestBadRequest creates a PublicSubmitMyAccountDeletionRequestBadRequest with default headers values
func NewPublicSubmitMyAccountDeletionRequestBadRequest() *PublicSubmitMyAccountDeletionRequestBadRequest {
	return &PublicSubmitMyAccountDeletionRequestBadRequest{}
}

/*PublicSubmitMyAccountDeletionRequestBadRequest handles this case with default header values.

  Bad Request
*/
type PublicSubmitMyAccountDeletionRequestBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyAccountDeletionRequestBadRequest) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/deletions][%d] publicSubmitMyAccountDeletionRequestBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicSubmitMyAccountDeletionRequestBadRequest) ToJSONString() string {
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

func (o *PublicSubmitMyAccountDeletionRequestBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyAccountDeletionRequestBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSubmitMyAccountDeletionRequestUnauthorized creates a PublicSubmitMyAccountDeletionRequestUnauthorized with default headers values
func NewPublicSubmitMyAccountDeletionRequestUnauthorized() *PublicSubmitMyAccountDeletionRequestUnauthorized {
	return &PublicSubmitMyAccountDeletionRequestUnauthorized{}
}

/*PublicSubmitMyAccountDeletionRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicSubmitMyAccountDeletionRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyAccountDeletionRequestUnauthorized) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/deletions][%d] publicSubmitMyAccountDeletionRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicSubmitMyAccountDeletionRequestUnauthorized) ToJSONString() string {
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

func (o *PublicSubmitMyAccountDeletionRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyAccountDeletionRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSubmitMyAccountDeletionRequestForbidden creates a PublicSubmitMyAccountDeletionRequestForbidden with default headers values
func NewPublicSubmitMyAccountDeletionRequestForbidden() *PublicSubmitMyAccountDeletionRequestForbidden {
	return &PublicSubmitMyAccountDeletionRequestForbidden{}
}

/*PublicSubmitMyAccountDeletionRequestForbidden handles this case with default header values.

  Forbidden
*/
type PublicSubmitMyAccountDeletionRequestForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyAccountDeletionRequestForbidden) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/deletions][%d] publicSubmitMyAccountDeletionRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicSubmitMyAccountDeletionRequestForbidden) ToJSONString() string {
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

func (o *PublicSubmitMyAccountDeletionRequestForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyAccountDeletionRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSubmitMyAccountDeletionRequestNotFound creates a PublicSubmitMyAccountDeletionRequestNotFound with default headers values
func NewPublicSubmitMyAccountDeletionRequestNotFound() *PublicSubmitMyAccountDeletionRequestNotFound {
	return &PublicSubmitMyAccountDeletionRequestNotFound{}
}

/*PublicSubmitMyAccountDeletionRequestNotFound handles this case with default header values.

  Not Found
*/
type PublicSubmitMyAccountDeletionRequestNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyAccountDeletionRequestNotFound) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/deletions][%d] publicSubmitMyAccountDeletionRequestNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicSubmitMyAccountDeletionRequestNotFound) ToJSONString() string {
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

func (o *PublicSubmitMyAccountDeletionRequestNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyAccountDeletionRequestNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicSubmitMyAccountDeletionRequestInternalServerError creates a PublicSubmitMyAccountDeletionRequestInternalServerError with default headers values
func NewPublicSubmitMyAccountDeletionRequestInternalServerError() *PublicSubmitMyAccountDeletionRequestInternalServerError {
	return &PublicSubmitMyAccountDeletionRequestInternalServerError{}
}

/*PublicSubmitMyAccountDeletionRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicSubmitMyAccountDeletionRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyAccountDeletionRequestInternalServerError) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/deletions][%d] publicSubmitMyAccountDeletionRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicSubmitMyAccountDeletionRequestInternalServerError) ToJSONString() string {
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

func (o *PublicSubmitMyAccountDeletionRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyAccountDeletionRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
