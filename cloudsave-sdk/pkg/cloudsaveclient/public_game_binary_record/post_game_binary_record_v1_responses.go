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

// PostGameBinaryRecordV1Reader is a Reader for the PostGameBinaryRecordV1 structure.
type PostGameBinaryRecordV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PostGameBinaryRecordV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewPostGameBinaryRecordV1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPostGameBinaryRecordV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPostGameBinaryRecordV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPostGameBinaryRecordV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewPostGameBinaryRecordV1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPostGameBinaryRecordV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/namespaces/{namespace}/binaries returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPostGameBinaryRecordV1Created creates a PostGameBinaryRecordV1Created with default headers values
func NewPostGameBinaryRecordV1Created() *PostGameBinaryRecordV1Created {
	return &PostGameBinaryRecordV1Created{}
}

/*PostGameBinaryRecordV1Created handles this case with default header values.

  Record in namespace-level created
*/
type PostGameBinaryRecordV1Created struct {
	Payload *cloudsaveclientmodels.ModelsUploadBinaryRecordResponse
}

func (o *PostGameBinaryRecordV1Created) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/binaries][%d] postGameBinaryRecordV1Created  %+v", 201, o.ToJSONString())
}

func (o *PostGameBinaryRecordV1Created) ToJSONString() string {
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

func (o *PostGameBinaryRecordV1Created) GetPayload() *cloudsaveclientmodels.ModelsUploadBinaryRecordResponse {
	return o.Payload
}

func (o *PostGameBinaryRecordV1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPostGameBinaryRecordV1BadRequest creates a PostGameBinaryRecordV1BadRequest with default headers values
func NewPostGameBinaryRecordV1BadRequest() *PostGameBinaryRecordV1BadRequest {
	return &PostGameBinaryRecordV1BadRequest{}
}

/*PostGameBinaryRecordV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18305</td><td>invalid request body</td></tr></table>
*/
type PostGameBinaryRecordV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PostGameBinaryRecordV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/binaries][%d] postGameBinaryRecordV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PostGameBinaryRecordV1BadRequest) ToJSONString() string {
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

func (o *PostGameBinaryRecordV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PostGameBinaryRecordV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPostGameBinaryRecordV1Unauthorized creates a PostGameBinaryRecordV1Unauthorized with default headers values
func NewPostGameBinaryRecordV1Unauthorized() *PostGameBinaryRecordV1Unauthorized {
	return &PostGameBinaryRecordV1Unauthorized{}
}

/*PostGameBinaryRecordV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PostGameBinaryRecordV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PostGameBinaryRecordV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/binaries][%d] postGameBinaryRecordV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PostGameBinaryRecordV1Unauthorized) ToJSONString() string {
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

func (o *PostGameBinaryRecordV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PostGameBinaryRecordV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPostGameBinaryRecordV1Forbidden creates a PostGameBinaryRecordV1Forbidden with default headers values
func NewPostGameBinaryRecordV1Forbidden() *PostGameBinaryRecordV1Forbidden {
	return &PostGameBinaryRecordV1Forbidden{}
}

/*PostGameBinaryRecordV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type PostGameBinaryRecordV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PostGameBinaryRecordV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/binaries][%d] postGameBinaryRecordV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *PostGameBinaryRecordV1Forbidden) ToJSONString() string {
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

func (o *PostGameBinaryRecordV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PostGameBinaryRecordV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPostGameBinaryRecordV1Conflict creates a PostGameBinaryRecordV1Conflict with default headers values
func NewPostGameBinaryRecordV1Conflict() *PostGameBinaryRecordV1Conflict {
	return &PostGameBinaryRecordV1Conflict{}
}

/*PostGameBinaryRecordV1Conflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18309</td><td>key already exists</td></tr></table>
*/
type PostGameBinaryRecordV1Conflict struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PostGameBinaryRecordV1Conflict) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/binaries][%d] postGameBinaryRecordV1Conflict  %+v", 409, o.ToJSONString())
}

func (o *PostGameBinaryRecordV1Conflict) ToJSONString() string {
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

func (o *PostGameBinaryRecordV1Conflict) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PostGameBinaryRecordV1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPostGameBinaryRecordV1InternalServerError creates a PostGameBinaryRecordV1InternalServerError with default headers values
func NewPostGameBinaryRecordV1InternalServerError() *PostGameBinaryRecordV1InternalServerError {
	return &PostGameBinaryRecordV1InternalServerError{}
}

/*PostGameBinaryRecordV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18301</td><td>unable to get record</td></tr><tr><td>18307</td><td>unable to save record</td></tr><tr><td>18310</td><td>unable to get presigned URL</td></tr></table>
*/
type PostGameBinaryRecordV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *PostGameBinaryRecordV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/binaries][%d] postGameBinaryRecordV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PostGameBinaryRecordV1InternalServerError) ToJSONString() string {
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

func (o *PostGameBinaryRecordV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *PostGameBinaryRecordV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
