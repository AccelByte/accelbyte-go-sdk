// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_player_binary_record

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclientmodels"
)

// PostPlayerBinaryPresignedURLV1Reader is a Reader for the PostPlayerBinaryPresignedURLV1 structure.
type PostPlayerBinaryPresignedURLV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PostPlayerBinaryPresignedURLV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPostPlayerBinaryPresignedURLV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPostPlayerBinaryPresignedURLV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPostPlayerBinaryPresignedURLV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPostPlayerBinaryPresignedURLV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPostPlayerBinaryPresignedURLV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPostPlayerBinaryPresignedURLV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPostPlayerBinaryPresignedURLV1Created creates a PostPlayerBinaryPresignedURLV1Created with default headers values
func NewPostPlayerBinaryPresignedURLV1Created() *PostPlayerBinaryPresignedURLV1Created {
	return &PostPlayerBinaryPresignedURLV1Created{}
}

/*PostPlayerBinaryPresignedURLV1Created handles this case with default header values.

  Successful Operation
*/
type PostPlayerBinaryPresignedURLV1Created struct {
	Payload *cloudsaveclientmodels.ModelsUploadBinaryRecordResponse
}

func (o *PostPlayerBinaryPresignedURLV1Created) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned][%d] postPlayerBinaryPresignedUrlV1Created  %+v", 201, o.ToJSONString())
}

func (o *PostPlayerBinaryPresignedURLV1Created) ToJSONString() string {
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

func (o *PostPlayerBinaryPresignedURLV1Created) GetPayload() *cloudsaveclientmodels.ModelsUploadBinaryRecordResponse {
	return o.Payload
}

func (o *PostPlayerBinaryPresignedURLV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsUploadBinaryRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPostPlayerBinaryPresignedURLV1BadRequest creates a PostPlayerBinaryPresignedURLV1BadRequest with default headers values
func NewPostPlayerBinaryPresignedURLV1BadRequest() *PostPlayerBinaryPresignedURLV1BadRequest {
	return &PostPlayerBinaryPresignedURLV1BadRequest{}
}

/*PostPlayerBinaryPresignedURLV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18311</td><td>invalid request body</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr></table>
*/
type PostPlayerBinaryPresignedURLV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PostPlayerBinaryPresignedURLV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned][%d] postPlayerBinaryPresignedUrlV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PostPlayerBinaryPresignedURLV1BadRequest) ToJSONString() string {
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

func (o *PostPlayerBinaryPresignedURLV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PostPlayerBinaryPresignedURLV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPostPlayerBinaryPresignedURLV1Unauthorized creates a PostPlayerBinaryPresignedURLV1Unauthorized with default headers values
func NewPostPlayerBinaryPresignedURLV1Unauthorized() *PostPlayerBinaryPresignedURLV1Unauthorized {
	return &PostPlayerBinaryPresignedURLV1Unauthorized{}
}

/*PostPlayerBinaryPresignedURLV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PostPlayerBinaryPresignedURLV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PostPlayerBinaryPresignedURLV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned][%d] postPlayerBinaryPresignedUrlV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PostPlayerBinaryPresignedURLV1Unauthorized) ToJSONString() string {
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

func (o *PostPlayerBinaryPresignedURLV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PostPlayerBinaryPresignedURLV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPostPlayerBinaryPresignedURLV1Forbidden creates a PostPlayerBinaryPresignedURLV1Forbidden with default headers values
func NewPostPlayerBinaryPresignedURLV1Forbidden() *PostPlayerBinaryPresignedURLV1Forbidden {
	return &PostPlayerBinaryPresignedURLV1Forbidden{}
}

/*PostPlayerBinaryPresignedURLV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PostPlayerBinaryPresignedURLV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PostPlayerBinaryPresignedURLV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned][%d] postPlayerBinaryPresignedUrlV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PostPlayerBinaryPresignedURLV1Forbidden) ToJSONString() string {
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

func (o *PostPlayerBinaryPresignedURLV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PostPlayerBinaryPresignedURLV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPostPlayerBinaryPresignedURLV1NotFound creates a PostPlayerBinaryPresignedURLV1NotFound with default headers values
func NewPostPlayerBinaryPresignedURLV1NotFound() *PostPlayerBinaryPresignedURLV1NotFound {
	return &PostPlayerBinaryPresignedURLV1NotFound{}
}

/*PostPlayerBinaryPresignedURLV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18313</td><td>record not found</td></tr></table>
*/
type PostPlayerBinaryPresignedURLV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PostPlayerBinaryPresignedURLV1NotFound) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned][%d] postPlayerBinaryPresignedUrlV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *PostPlayerBinaryPresignedURLV1NotFound) ToJSONString() string {
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

func (o *PostPlayerBinaryPresignedURLV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PostPlayerBinaryPresignedURLV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPostPlayerBinaryPresignedURLV1InternalServerError creates a PostPlayerBinaryPresignedURLV1InternalServerError with default headers values
func NewPostPlayerBinaryPresignedURLV1InternalServerError() *PostPlayerBinaryPresignedURLV1InternalServerError {
	return &PostPlayerBinaryPresignedURLV1InternalServerError{}
}

/*PostPlayerBinaryPresignedURLV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18312</td><td>unable to get record</td></tr><tr><td>18314</td><td>unable to get presigned URL</td></tr></table>
*/
type PostPlayerBinaryPresignedURLV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PostPlayerBinaryPresignedURLV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/{key}/presigned][%d] postPlayerBinaryPresignedUrlV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PostPlayerBinaryPresignedURLV1InternalServerError) ToJSONString() string {
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

func (o *PostPlayerBinaryPresignedURLV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PostPlayerBinaryPresignedURLV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
