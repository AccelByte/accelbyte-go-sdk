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

// ListGameBinaryRecordsV1Reader is a Reader for the ListGameBinaryRecordsV1 structure.
type ListGameBinaryRecordsV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListGameBinaryRecordsV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListGameBinaryRecordsV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListGameBinaryRecordsV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListGameBinaryRecordsV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewListGameBinaryRecordsV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListGameBinaryRecordsV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /cloudsave/v1/namespaces/{namespace}/binaries returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListGameBinaryRecordsV1OK creates a ListGameBinaryRecordsV1OK with default headers values
func NewListGameBinaryRecordsV1OK() *ListGameBinaryRecordsV1OK {
	return &ListGameBinaryRecordsV1OK{}
}

/*ListGameBinaryRecordsV1OK handles this case with default header values.

  Retrieve list of records by namespace
*/
type ListGameBinaryRecordsV1OK struct {
	Payload *cloudsaveclientmodels.ModelsListGameBinaryRecordsResponse
}

func (o *ListGameBinaryRecordsV1OK) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/binaries][%d] listGameBinaryRecordsV1OK  %+v", 200, o.ToJSONString())
}

func (o *ListGameBinaryRecordsV1OK) ToJSONString() string {
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

func (o *ListGameBinaryRecordsV1OK) GetPayload() *cloudsaveclientmodels.ModelsListGameBinaryRecordsResponse {
	return o.Payload
}

func (o *ListGameBinaryRecordsV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsListGameBinaryRecordsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListGameBinaryRecordsV1BadRequest creates a ListGameBinaryRecordsV1BadRequest with default headers values
func NewListGameBinaryRecordsV1BadRequest() *ListGameBinaryRecordsV1BadRequest {
	return &ListGameBinaryRecordsV1BadRequest{}
}

/*ListGameBinaryRecordsV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18304</td><td>invalid request body</td></tr></table>
*/
type ListGameBinaryRecordsV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *ListGameBinaryRecordsV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/binaries][%d] listGameBinaryRecordsV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListGameBinaryRecordsV1BadRequest) ToJSONString() string {
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

func (o *ListGameBinaryRecordsV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *ListGameBinaryRecordsV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListGameBinaryRecordsV1Unauthorized creates a ListGameBinaryRecordsV1Unauthorized with default headers values
func NewListGameBinaryRecordsV1Unauthorized() *ListGameBinaryRecordsV1Unauthorized {
	return &ListGameBinaryRecordsV1Unauthorized{}
}

/*ListGameBinaryRecordsV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type ListGameBinaryRecordsV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *ListGameBinaryRecordsV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/binaries][%d] listGameBinaryRecordsV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListGameBinaryRecordsV1Unauthorized) ToJSONString() string {
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

func (o *ListGameBinaryRecordsV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *ListGameBinaryRecordsV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListGameBinaryRecordsV1Forbidden creates a ListGameBinaryRecordsV1Forbidden with default headers values
func NewListGameBinaryRecordsV1Forbidden() *ListGameBinaryRecordsV1Forbidden {
	return &ListGameBinaryRecordsV1Forbidden{}
}

/*ListGameBinaryRecordsV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type ListGameBinaryRecordsV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *ListGameBinaryRecordsV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/binaries][%d] listGameBinaryRecordsV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *ListGameBinaryRecordsV1Forbidden) ToJSONString() string {
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

func (o *ListGameBinaryRecordsV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *ListGameBinaryRecordsV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListGameBinaryRecordsV1InternalServerError creates a ListGameBinaryRecordsV1InternalServerError with default headers values
func NewListGameBinaryRecordsV1InternalServerError() *ListGameBinaryRecordsV1InternalServerError {
	return &ListGameBinaryRecordsV1InternalServerError{}
}

/*ListGameBinaryRecordsV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18301</td><td>unable to get record</td></tr></table>
*/
type ListGameBinaryRecordsV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *ListGameBinaryRecordsV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/binaries][%d] listGameBinaryRecordsV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListGameBinaryRecordsV1InternalServerError) ToJSONString() string {
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

func (o *ListGameBinaryRecordsV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *ListGameBinaryRecordsV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
