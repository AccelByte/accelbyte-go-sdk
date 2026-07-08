// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_deletion_headless

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

// PublicSubmitMyHeadlessDeletionRequestReader is a Reader for the PublicSubmitMyHeadlessDeletionRequest structure.
type PublicSubmitMyHeadlessDeletionRequestReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicSubmitMyHeadlessDeletionRequestReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicSubmitMyHeadlessDeletionRequestCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicSubmitMyHeadlessDeletionRequestUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicSubmitMyHeadlessDeletionRequestForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPublicSubmitMyHeadlessDeletionRequestConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicSubmitMyHeadlessDeletionRequestInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /gdpr/public/users/me/headless/deletions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicSubmitMyHeadlessDeletionRequestCreated creates a PublicSubmitMyHeadlessDeletionRequestCreated with default headers values
func NewPublicSubmitMyHeadlessDeletionRequestCreated() *PublicSubmitMyHeadlessDeletionRequestCreated {
	return &PublicSubmitMyHeadlessDeletionRequestCreated{}
}

/*PublicSubmitMyHeadlessDeletionRequestCreated handles this case with default header values.

  Created
*/
type PublicSubmitMyHeadlessDeletionRequestCreated struct {
	Payload *gdprclientmodels.ModelsRequestDeleteResponse
}

func (o *PublicSubmitMyHeadlessDeletionRequestCreated) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/deletions][%d] publicSubmitMyHeadlessDeletionRequestCreated  %+v", 201, o.ToJSONString())
}

func (o *PublicSubmitMyHeadlessDeletionRequestCreated) ToJSONString() string {
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

func (o *PublicSubmitMyHeadlessDeletionRequestCreated) GetPayload() *gdprclientmodels.ModelsRequestDeleteResponse {
	return o.Payload
}

func (o *PublicSubmitMyHeadlessDeletionRequestCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSubmitMyHeadlessDeletionRequestUnauthorized creates a PublicSubmitMyHeadlessDeletionRequestUnauthorized with default headers values
func NewPublicSubmitMyHeadlessDeletionRequestUnauthorized() *PublicSubmitMyHeadlessDeletionRequestUnauthorized {
	return &PublicSubmitMyHeadlessDeletionRequestUnauthorized{}
}

/*PublicSubmitMyHeadlessDeletionRequestUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicSubmitMyHeadlessDeletionRequestUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyHeadlessDeletionRequestUnauthorized) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/deletions][%d] publicSubmitMyHeadlessDeletionRequestUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicSubmitMyHeadlessDeletionRequestUnauthorized) ToJSONString() string {
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

func (o *PublicSubmitMyHeadlessDeletionRequestUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyHeadlessDeletionRequestUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSubmitMyHeadlessDeletionRequestForbidden creates a PublicSubmitMyHeadlessDeletionRequestForbidden with default headers values
func NewPublicSubmitMyHeadlessDeletionRequestForbidden() *PublicSubmitMyHeadlessDeletionRequestForbidden {
	return &PublicSubmitMyHeadlessDeletionRequestForbidden{}
}

/*PublicSubmitMyHeadlessDeletionRequestForbidden handles this case with default header values.

  Forbidden
*/
type PublicSubmitMyHeadlessDeletionRequestForbidden struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyHeadlessDeletionRequestForbidden) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/deletions][%d] publicSubmitMyHeadlessDeletionRequestForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicSubmitMyHeadlessDeletionRequestForbidden) ToJSONString() string {
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

func (o *PublicSubmitMyHeadlessDeletionRequestForbidden) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyHeadlessDeletionRequestForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSubmitMyHeadlessDeletionRequestConflict creates a PublicSubmitMyHeadlessDeletionRequestConflict with default headers values
func NewPublicSubmitMyHeadlessDeletionRequestConflict() *PublicSubmitMyHeadlessDeletionRequestConflict {
	return &PublicSubmitMyHeadlessDeletionRequestConflict{}
}

/*PublicSubmitMyHeadlessDeletionRequestConflict handles this case with default header values.

  Conflict
*/
type PublicSubmitMyHeadlessDeletionRequestConflict struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyHeadlessDeletionRequestConflict) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/deletions][%d] publicSubmitMyHeadlessDeletionRequestConflict  %+v", 409, o.ToJSONString())
}

func (o *PublicSubmitMyHeadlessDeletionRequestConflict) ToJSONString() string {
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

func (o *PublicSubmitMyHeadlessDeletionRequestConflict) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyHeadlessDeletionRequestConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicSubmitMyHeadlessDeletionRequestInternalServerError creates a PublicSubmitMyHeadlessDeletionRequestInternalServerError with default headers values
func NewPublicSubmitMyHeadlessDeletionRequestInternalServerError() *PublicSubmitMyHeadlessDeletionRequestInternalServerError {
	return &PublicSubmitMyHeadlessDeletionRequestInternalServerError{}
}

/*PublicSubmitMyHeadlessDeletionRequestInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicSubmitMyHeadlessDeletionRequestInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicSubmitMyHeadlessDeletionRequestInternalServerError) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/users/me/headless/deletions][%d] publicSubmitMyHeadlessDeletionRequestInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicSubmitMyHeadlessDeletionRequestInternalServerError) ToJSONString() string {
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

func (o *PublicSubmitMyHeadlessDeletionRequestInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicSubmitMyHeadlessDeletionRequestInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
