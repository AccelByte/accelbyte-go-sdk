// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval_s2_s

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

// S2SRequestDataRetrievalReader is a Reader for the S2SRequestDataRetrieval structure.
type S2SRequestDataRetrievalReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *S2SRequestDataRetrievalReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewS2SRequestDataRetrievalCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewS2SRequestDataRetrievalBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewS2SRequestDataRetrievalUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewS2SRequestDataRetrievalNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewS2SRequestDataRetrievalInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/requests returns an error %d: %s", response.Code(), string(data))
	}
}

// NewS2SRequestDataRetrievalCreated creates a S2SRequestDataRetrievalCreated with default headers values
func NewS2SRequestDataRetrievalCreated() *S2SRequestDataRetrievalCreated {
	return &S2SRequestDataRetrievalCreated{}
}

/*S2SRequestDataRetrievalCreated handles this case with default header values.

  Created
*/
type S2SRequestDataRetrievalCreated struct {
	Payload *gdprclientmodels.ModelsS2SDataRetrievalResponse
}

func (o *S2SRequestDataRetrievalCreated) Error() string {
	return fmt.Sprintf("[POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/requests][%d] s2SRequestDataRetrievalCreated  %+v", 201, o.ToJSONString())
}

func (o *S2SRequestDataRetrievalCreated) ToJSONString() string {
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

func (o *S2SRequestDataRetrievalCreated) GetPayload() *gdprclientmodels.ModelsS2SDataRetrievalResponse {
	return o.Payload
}

func (o *S2SRequestDataRetrievalCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(gdprclientmodels.ModelsS2SDataRetrievalResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewS2SRequestDataRetrievalBadRequest creates a S2SRequestDataRetrievalBadRequest with default headers values
func NewS2SRequestDataRetrievalBadRequest() *S2SRequestDataRetrievalBadRequest {
	return &S2SRequestDataRetrievalBadRequest{}
}

/*S2SRequestDataRetrievalBadRequest handles this case with default header values.

  Bad Request
*/
type S2SRequestDataRetrievalBadRequest struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SRequestDataRetrievalBadRequest) Error() string {
	return fmt.Sprintf("[POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/requests][%d] s2SRequestDataRetrievalBadRequest  %+v", 400, o.ToJSONString())
}

func (o *S2SRequestDataRetrievalBadRequest) ToJSONString() string {
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

func (o *S2SRequestDataRetrievalBadRequest) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SRequestDataRetrievalBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewS2SRequestDataRetrievalUnauthorized creates a S2SRequestDataRetrievalUnauthorized with default headers values
func NewS2SRequestDataRetrievalUnauthorized() *S2SRequestDataRetrievalUnauthorized {
	return &S2SRequestDataRetrievalUnauthorized{}
}

/*S2SRequestDataRetrievalUnauthorized handles this case with default header values.

  Unauthorized
*/
type S2SRequestDataRetrievalUnauthorized struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SRequestDataRetrievalUnauthorized) Error() string {
	return fmt.Sprintf("[POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/requests][%d] s2SRequestDataRetrievalUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *S2SRequestDataRetrievalUnauthorized) ToJSONString() string {
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

func (o *S2SRequestDataRetrievalUnauthorized) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SRequestDataRetrievalUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewS2SRequestDataRetrievalNotFound creates a S2SRequestDataRetrievalNotFound with default headers values
func NewS2SRequestDataRetrievalNotFound() *S2SRequestDataRetrievalNotFound {
	return &S2SRequestDataRetrievalNotFound{}
}

/*S2SRequestDataRetrievalNotFound handles this case with default header values.

  Not Found
*/
type S2SRequestDataRetrievalNotFound struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SRequestDataRetrievalNotFound) Error() string {
	return fmt.Sprintf("[POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/requests][%d] s2SRequestDataRetrievalNotFound  %+v", 404, o.ToJSONString())
}

func (o *S2SRequestDataRetrievalNotFound) ToJSONString() string {
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

func (o *S2SRequestDataRetrievalNotFound) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SRequestDataRetrievalNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewS2SRequestDataRetrievalInternalServerError creates a S2SRequestDataRetrievalInternalServerError with default headers values
func NewS2SRequestDataRetrievalInternalServerError() *S2SRequestDataRetrievalInternalServerError {
	return &S2SRequestDataRetrievalInternalServerError{}
}

/*S2SRequestDataRetrievalInternalServerError handles this case with default header values.

  Internal Server Error
*/
type S2SRequestDataRetrievalInternalServerError struct {
	Payload *gdprclientmodels.ResponseError
}

func (o *S2SRequestDataRetrievalInternalServerError) Error() string {
	return fmt.Sprintf("[POST /gdpr/s2s/namespaces/{namespace}/users/{userId}/requests][%d] s2SRequestDataRetrievalInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *S2SRequestDataRetrievalInternalServerError) ToJSONString() string {
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

func (o *S2SRequestDataRetrievalInternalServerError) GetPayload() *gdprclientmodels.ResponseError {
	return o.Payload
}

func (o *S2SRequestDataRetrievalInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
