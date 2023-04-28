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

// PublicRequestDataRetrievalReader is a Reader for the PublicRequestDataRetrieval structure.
type PublicRequestDataRetrievalReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicRequestDataRetrievalReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPublicRequestDataRetrievalCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicRequestDataRetrievalBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicRequestDataRetrievalUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicRequestDataRetrievalInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicRequestDataRetrievalCreated creates a PublicRequestDataRetrievalCreated with default headers values
func NewPublicRequestDataRetrievalCreated() *PublicRequestDataRetrievalCreated {
	return &PublicRequestDataRetrievalCreated{}
}

/*PublicRequestDataRetrievalCreated handles this case with default header values.

  Created
*/
type PublicRequestDataRetrievalCreated struct {
	Payload *gdprclientmodels.ModelsDataRetrievalResponse
}

func (o *PublicRequestDataRetrievalCreated) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests][%d] publicRequestDataRetrievalCreated  %+v", 201, o.ToJSONString())
}

func (o *PublicRequestDataRetrievalCreated) ToJSONString() string {
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

func (o *PublicRequestDataRetrievalCreated) GetPayload() *gdprclientmodels.ModelsDataRetrievalResponse {
	return o.Payload
}

func (o *PublicRequestDataRetrievalCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ModelsDataRetrievalResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicRequestDataRetrievalBadRequest creates a PublicRequestDataRetrievalBadRequest with default headers values
func NewPublicRequestDataRetrievalBadRequest() *PublicRequestDataRetrievalBadRequest {
	return &PublicRequestDataRetrievalBadRequest{}
}

/*PublicRequestDataRetrievalBadRequest handles this case with default header values.

  Bad Request
*/
type PublicRequestDataRetrievalBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicRequestDataRetrievalBadRequest) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests][%d] publicRequestDataRetrievalBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicRequestDataRetrievalBadRequest) ToJSONString() string {
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

func (o *PublicRequestDataRetrievalBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicRequestDataRetrievalBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicRequestDataRetrievalUnauthorized creates a PublicRequestDataRetrievalUnauthorized with default headers values
func NewPublicRequestDataRetrievalUnauthorized() *PublicRequestDataRetrievalUnauthorized {
	return &PublicRequestDataRetrievalUnauthorized{}
}

/*PublicRequestDataRetrievalUnauthorized handles this case with default header values.

  Unauthorized
*/
type PublicRequestDataRetrievalUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicRequestDataRetrievalUnauthorized) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests][%d] publicRequestDataRetrievalUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicRequestDataRetrievalUnauthorized) ToJSONString() string {
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

func (o *PublicRequestDataRetrievalUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicRequestDataRetrievalUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicRequestDataRetrievalInternalServerError creates a PublicRequestDataRetrievalInternalServerError with default headers values
func NewPublicRequestDataRetrievalInternalServerError() *PublicRequestDataRetrievalInternalServerError {
	return &PublicRequestDataRetrievalInternalServerError{}
}

/*PublicRequestDataRetrievalInternalServerError handles this case with default header values.

  Internal Server Error
*/
type PublicRequestDataRetrievalInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *PublicRequestDataRetrievalInternalServerError) Error() string {
	return fmt.Sprintf("[POST /gdpr/public/namespaces/{namespace}/users/{userId}/requests][%d] publicRequestDataRetrievalInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicRequestDataRetrievalInternalServerError) ToJSONString() string {
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

func (o *PublicRequestDataRetrievalInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *PublicRequestDataRetrievalInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
