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

// ListMyBinaryRecordsV1Reader is a Reader for the ListMyBinaryRecordsV1 structure.
type ListMyBinaryRecordsV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListMyBinaryRecordsV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListMyBinaryRecordsV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListMyBinaryRecordsV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListMyBinaryRecordsV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewListMyBinaryRecordsV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListMyBinaryRecordsV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /cloudsave/v1/namespaces/{namespace}/users/me/binaries returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListMyBinaryRecordsV1OK creates a ListMyBinaryRecordsV1OK with default headers values
func NewListMyBinaryRecordsV1OK() *ListMyBinaryRecordsV1OK {
	return &ListMyBinaryRecordsV1OK{}
}

/*ListMyBinaryRecordsV1OK handles this case with default header values.

  Retrieve list of player records by namespace
*/
type ListMyBinaryRecordsV1OK struct {
	Payload *cloudsaveclientmodels.ModelsListPlayerBinaryRecordsResponse
}

func (o *ListMyBinaryRecordsV1OK) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/me/binaries][%d] listMyBinaryRecordsV1OK  %+v", 200, o.ToJSONString())
}

func (o *ListMyBinaryRecordsV1OK) ToJSONString() string {
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

func (o *ListMyBinaryRecordsV1OK) GetPayload() *cloudsaveclientmodels.ModelsListPlayerBinaryRecordsResponse {
	return o.Payload
}

func (o *ListMyBinaryRecordsV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsListPlayerBinaryRecordsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListMyBinaryRecordsV1BadRequest creates a ListMyBinaryRecordsV1BadRequest with default headers values
func NewListMyBinaryRecordsV1BadRequest() *ListMyBinaryRecordsV1BadRequest {
	return &ListMyBinaryRecordsV1BadRequest{}
}

/*ListMyBinaryRecordsV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18125</td><td>invalid request body</td></tr><tr><td>18126</td><td>request record keys list exceed max size [%d]</td></tr></table>
*/
type ListMyBinaryRecordsV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *ListMyBinaryRecordsV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/me/binaries][%d] listMyBinaryRecordsV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListMyBinaryRecordsV1BadRequest) ToJSONString() string {
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

func (o *ListMyBinaryRecordsV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *ListMyBinaryRecordsV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListMyBinaryRecordsV1Unauthorized creates a ListMyBinaryRecordsV1Unauthorized with default headers values
func NewListMyBinaryRecordsV1Unauthorized() *ListMyBinaryRecordsV1Unauthorized {
	return &ListMyBinaryRecordsV1Unauthorized{}
}

/*ListMyBinaryRecordsV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type ListMyBinaryRecordsV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *ListMyBinaryRecordsV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/me/binaries][%d] listMyBinaryRecordsV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListMyBinaryRecordsV1Unauthorized) ToJSONString() string {
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

func (o *ListMyBinaryRecordsV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *ListMyBinaryRecordsV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListMyBinaryRecordsV1Forbidden creates a ListMyBinaryRecordsV1Forbidden with default headers values
func NewListMyBinaryRecordsV1Forbidden() *ListMyBinaryRecordsV1Forbidden {
	return &ListMyBinaryRecordsV1Forbidden{}
}

/*ListMyBinaryRecordsV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type ListMyBinaryRecordsV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *ListMyBinaryRecordsV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/me/binaries][%d] listMyBinaryRecordsV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *ListMyBinaryRecordsV1Forbidden) ToJSONString() string {
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

func (o *ListMyBinaryRecordsV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *ListMyBinaryRecordsV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListMyBinaryRecordsV1InternalServerError creates a ListMyBinaryRecordsV1InternalServerError with default headers values
func NewListMyBinaryRecordsV1InternalServerError() *ListMyBinaryRecordsV1InternalServerError {
	return &ListMyBinaryRecordsV1InternalServerError{}
}

/*ListMyBinaryRecordsV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18343</td><td>unable to get record</td></tr></table>
*/
type ListMyBinaryRecordsV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *ListMyBinaryRecordsV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/me/binaries][%d] listMyBinaryRecordsV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListMyBinaryRecordsV1InternalServerError) ToJSONString() string {
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

func (o *ListMyBinaryRecordsV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *ListMyBinaryRecordsV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
