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

// ListOtherPlayerPublicBinaryRecordsV1Reader is a Reader for the ListOtherPlayerPublicBinaryRecordsV1 structure.
type ListOtherPlayerPublicBinaryRecordsV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListOtherPlayerPublicBinaryRecordsV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListOtherPlayerPublicBinaryRecordsV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewListOtherPlayerPublicBinaryRecordsV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewListOtherPlayerPublicBinaryRecordsV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewListOtherPlayerPublicBinaryRecordsV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListOtherPlayerPublicBinaryRecordsV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListOtherPlayerPublicBinaryRecordsV1OK creates a ListOtherPlayerPublicBinaryRecordsV1OK with default headers values
func NewListOtherPlayerPublicBinaryRecordsV1OK() *ListOtherPlayerPublicBinaryRecordsV1OK {
	return &ListOtherPlayerPublicBinaryRecordsV1OK{}
}

/*ListOtherPlayerPublicBinaryRecordsV1OK handles this case with default header values.

  Successful operation
*/
type ListOtherPlayerPublicBinaryRecordsV1OK struct {
	Payload *cloudsaveclientmodels.ModelsListPlayerBinaryRecordsResponse
}

func (o *ListOtherPlayerPublicBinaryRecordsV1OK) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public][%d] listOtherPlayerPublicBinaryRecordsV1OK  %+v", 200, o.ToJSONString())
}

func (o *ListOtherPlayerPublicBinaryRecordsV1OK) ToJSONString() string {
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

func (o *ListOtherPlayerPublicBinaryRecordsV1OK) GetPayload() *cloudsaveclientmodels.ModelsListPlayerBinaryRecordsResponse {
	return o.Payload
}

func (o *ListOtherPlayerPublicBinaryRecordsV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListOtherPlayerPublicBinaryRecordsV1BadRequest creates a ListOtherPlayerPublicBinaryRecordsV1BadRequest with default headers values
func NewListOtherPlayerPublicBinaryRecordsV1BadRequest() *ListOtherPlayerPublicBinaryRecordsV1BadRequest {
	return &ListOtherPlayerPublicBinaryRecordsV1BadRequest{}
}

/*ListOtherPlayerPublicBinaryRecordsV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18347</td><td>invalid request body</td></tr></table>
*/
type ListOtherPlayerPublicBinaryRecordsV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *ListOtherPlayerPublicBinaryRecordsV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public][%d] listOtherPlayerPublicBinaryRecordsV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *ListOtherPlayerPublicBinaryRecordsV1BadRequest) ToJSONString() string {
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

func (o *ListOtherPlayerPublicBinaryRecordsV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *ListOtherPlayerPublicBinaryRecordsV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListOtherPlayerPublicBinaryRecordsV1Unauthorized creates a ListOtherPlayerPublicBinaryRecordsV1Unauthorized with default headers values
func NewListOtherPlayerPublicBinaryRecordsV1Unauthorized() *ListOtherPlayerPublicBinaryRecordsV1Unauthorized {
	return &ListOtherPlayerPublicBinaryRecordsV1Unauthorized{}
}

/*ListOtherPlayerPublicBinaryRecordsV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type ListOtherPlayerPublicBinaryRecordsV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *ListOtherPlayerPublicBinaryRecordsV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public][%d] listOtherPlayerPublicBinaryRecordsV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *ListOtherPlayerPublicBinaryRecordsV1Unauthorized) ToJSONString() string {
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

func (o *ListOtherPlayerPublicBinaryRecordsV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *ListOtherPlayerPublicBinaryRecordsV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListOtherPlayerPublicBinaryRecordsV1Forbidden creates a ListOtherPlayerPublicBinaryRecordsV1Forbidden with default headers values
func NewListOtherPlayerPublicBinaryRecordsV1Forbidden() *ListOtherPlayerPublicBinaryRecordsV1Forbidden {
	return &ListOtherPlayerPublicBinaryRecordsV1Forbidden{}
}

/*ListOtherPlayerPublicBinaryRecordsV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type ListOtherPlayerPublicBinaryRecordsV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *ListOtherPlayerPublicBinaryRecordsV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public][%d] listOtherPlayerPublicBinaryRecordsV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *ListOtherPlayerPublicBinaryRecordsV1Forbidden) ToJSONString() string {
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

func (o *ListOtherPlayerPublicBinaryRecordsV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *ListOtherPlayerPublicBinaryRecordsV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewListOtherPlayerPublicBinaryRecordsV1InternalServerError creates a ListOtherPlayerPublicBinaryRecordsV1InternalServerError with default headers values
func NewListOtherPlayerPublicBinaryRecordsV1InternalServerError() *ListOtherPlayerPublicBinaryRecordsV1InternalServerError {
	return &ListOtherPlayerPublicBinaryRecordsV1InternalServerError{}
}

/*ListOtherPlayerPublicBinaryRecordsV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18345</td><td>unable to retrieve list of key records</td></tr></table>
*/
type ListOtherPlayerPublicBinaryRecordsV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *ListOtherPlayerPublicBinaryRecordsV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public][%d] listOtherPlayerPublicBinaryRecordsV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListOtherPlayerPublicBinaryRecordsV1InternalServerError) ToJSONString() string {
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

func (o *ListOtherPlayerPublicBinaryRecordsV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *ListOtherPlayerPublicBinaryRecordsV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
