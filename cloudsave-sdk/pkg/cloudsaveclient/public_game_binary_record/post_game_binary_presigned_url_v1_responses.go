// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_game_binary_record

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

// PostGameBinaryPresignedURLV1Reader is a Reader for the PostGameBinaryPresignedURLV1 structure.
type PostGameBinaryPresignedURLV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PostGameBinaryPresignedURLV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPostGameBinaryPresignedURLV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPostGameBinaryPresignedURLV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPostGameBinaryPresignedURLV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPostGameBinaryPresignedURLV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPostGameBinaryPresignedURLV1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPostGameBinaryPresignedURLV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/namespaces/{namespace}/binaries/{key}/presigned returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPostGameBinaryPresignedURLV1Created creates a PostGameBinaryPresignedURLV1Created with default headers values
func NewPostGameBinaryPresignedURLV1Created() *PostGameBinaryPresignedURLV1Created {
	return &PostGameBinaryPresignedURLV1Created{}
}

/*PostGameBinaryPresignedURLV1Created handles this case with default header values.

  Successful Operation
*/
type PostGameBinaryPresignedURLV1Created struct {
	Payload *cloudsaveclientmodels.ModelsUploadBinaryRecordResponse
}

func (o *PostGameBinaryPresignedURLV1Created) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/binaries/{key}/presigned][%d] postGameBinaryPresignedUrlV1Created  %+v", 201, o.ToJSONString())
}

func (o *PostGameBinaryPresignedURLV1Created) ToJSONString() string {
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

func (o *PostGameBinaryPresignedURLV1Created) GetPayload() *cloudsaveclientmodels.ModelsUploadBinaryRecordResponse {
	return o.Payload
}

func (o *PostGameBinaryPresignedURLV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPostGameBinaryPresignedURLV1BadRequest creates a PostGameBinaryPresignedURLV1BadRequest with default headers values
func NewPostGameBinaryPresignedURLV1BadRequest() *PostGameBinaryPresignedURLV1BadRequest {
	return &PostGameBinaryPresignedURLV1BadRequest{}
}

/*PostGameBinaryPresignedURLV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18311</td><td>invalid request body</td></tr><tr><td>18201</td><td>invalid record operator, expect [%s] but actual [%s]</td></tr></table>
*/
type PostGameBinaryPresignedURLV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PostGameBinaryPresignedURLV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/binaries/{key}/presigned][%d] postGameBinaryPresignedUrlV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PostGameBinaryPresignedURLV1BadRequest) ToJSONString() string {
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

func (o *PostGameBinaryPresignedURLV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PostGameBinaryPresignedURLV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPostGameBinaryPresignedURLV1Unauthorized creates a PostGameBinaryPresignedURLV1Unauthorized with default headers values
func NewPostGameBinaryPresignedURLV1Unauthorized() *PostGameBinaryPresignedURLV1Unauthorized {
	return &PostGameBinaryPresignedURLV1Unauthorized{}
}

/*PostGameBinaryPresignedURLV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PostGameBinaryPresignedURLV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PostGameBinaryPresignedURLV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/binaries/{key}/presigned][%d] postGameBinaryPresignedUrlV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PostGameBinaryPresignedURLV1Unauthorized) ToJSONString() string {
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

func (o *PostGameBinaryPresignedURLV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PostGameBinaryPresignedURLV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPostGameBinaryPresignedURLV1Forbidden creates a PostGameBinaryPresignedURLV1Forbidden with default headers values
func NewPostGameBinaryPresignedURLV1Forbidden() *PostGameBinaryPresignedURLV1Forbidden {
	return &PostGameBinaryPresignedURLV1Forbidden{}
}

/*PostGameBinaryPresignedURLV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PostGameBinaryPresignedURLV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PostGameBinaryPresignedURLV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/binaries/{key}/presigned][%d] postGameBinaryPresignedUrlV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PostGameBinaryPresignedURLV1Forbidden) ToJSONString() string {
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

func (o *PostGameBinaryPresignedURLV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PostGameBinaryPresignedURLV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPostGameBinaryPresignedURLV1NotFound creates a PostGameBinaryPresignedURLV1NotFound with default headers values
func NewPostGameBinaryPresignedURLV1NotFound() *PostGameBinaryPresignedURLV1NotFound {
	return &PostGameBinaryPresignedURLV1NotFound{}
}

/*PostGameBinaryPresignedURLV1NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18313</td><td>record not found</td></tr></table>
*/
type PostGameBinaryPresignedURLV1NotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PostGameBinaryPresignedURLV1NotFound) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/binaries/{key}/presigned][%d] postGameBinaryPresignedUrlV1NotFound  %+v", 404, o.ToJSONString())
}

func (o *PostGameBinaryPresignedURLV1NotFound) ToJSONString() string {
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

func (o *PostGameBinaryPresignedURLV1NotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PostGameBinaryPresignedURLV1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPostGameBinaryPresignedURLV1InternalServerError creates a PostGameBinaryPresignedURLV1InternalServerError with default headers values
func NewPostGameBinaryPresignedURLV1InternalServerError() *PostGameBinaryPresignedURLV1InternalServerError {
	return &PostGameBinaryPresignedURLV1InternalServerError{}
}

/*PostGameBinaryPresignedURLV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18312</td><td>unable to get record</td></tr><tr><td>18314</td><td>unable to get presigned URL</td></tr></table>
*/
type PostGameBinaryPresignedURLV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PostGameBinaryPresignedURLV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/binaries/{key}/presigned][%d] postGameBinaryPresignedUrlV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PostGameBinaryPresignedURLV1InternalServerError) ToJSONString() string {
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

func (o *PostGameBinaryPresignedURLV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PostGameBinaryPresignedURLV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
