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

// BulkGetOtherPlayerPublicBinaryRecordsV1Reader is a Reader for the BulkGetOtherPlayerPublicBinaryRecordsV1 structure.
type BulkGetOtherPlayerPublicBinaryRecordsV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *BulkGetOtherPlayerPublicBinaryRecordsV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewBulkGetOtherPlayerPublicBinaryRecordsV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewBulkGetOtherPlayerPublicBinaryRecordsV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewBulkGetOtherPlayerPublicBinaryRecordsV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewBulkGetOtherPlayerPublicBinaryRecordsV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewBulkGetOtherPlayerPublicBinaryRecordsV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewBulkGetOtherPlayerPublicBinaryRecordsV1OK creates a BulkGetOtherPlayerPublicBinaryRecordsV1OK with default headers values
func NewBulkGetOtherPlayerPublicBinaryRecordsV1OK() *BulkGetOtherPlayerPublicBinaryRecordsV1OK {
	return &BulkGetOtherPlayerPublicBinaryRecordsV1OK{}
}

/*BulkGetOtherPlayerPublicBinaryRecordsV1OK handles this case with default header values.

  Successful operation
*/
type BulkGetOtherPlayerPublicBinaryRecordsV1OK struct {
	Payload *cloudsaveclientmodels.ModelsBulkGetPlayerBinaryRecordResponse
}

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1OK) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public/bulk][%d] bulkGetOtherPlayerPublicBinaryRecordsV1OK  %+v", 200, o.ToJSONString())
}

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1OK) ToJSONString() string {
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

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1OK) GetPayload() *cloudsaveclientmodels.ModelsBulkGetPlayerBinaryRecordResponse {
	return o.Payload
}

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsBulkGetPlayerBinaryRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewBulkGetOtherPlayerPublicBinaryRecordsV1BadRequest creates a BulkGetOtherPlayerPublicBinaryRecordsV1BadRequest with default headers values
func NewBulkGetOtherPlayerPublicBinaryRecordsV1BadRequest() *BulkGetOtherPlayerPublicBinaryRecordsV1BadRequest {
	return &BulkGetOtherPlayerPublicBinaryRecordsV1BadRequest{}
}

/*BulkGetOtherPlayerPublicBinaryRecordsV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18342</td><td>invalid request body</td></tr></table>
*/
type BulkGetOtherPlayerPublicBinaryRecordsV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1BadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public/bulk][%d] bulkGetOtherPlayerPublicBinaryRecordsV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1BadRequest) ToJSONString() string {
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

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkGetOtherPlayerPublicBinaryRecordsV1Unauthorized creates a BulkGetOtherPlayerPublicBinaryRecordsV1Unauthorized with default headers values
func NewBulkGetOtherPlayerPublicBinaryRecordsV1Unauthorized() *BulkGetOtherPlayerPublicBinaryRecordsV1Unauthorized {
	return &BulkGetOtherPlayerPublicBinaryRecordsV1Unauthorized{}
}

/*BulkGetOtherPlayerPublicBinaryRecordsV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type BulkGetOtherPlayerPublicBinaryRecordsV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1Unauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public/bulk][%d] bulkGetOtherPlayerPublicBinaryRecordsV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1Unauthorized) ToJSONString() string {
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

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkGetOtherPlayerPublicBinaryRecordsV1Forbidden creates a BulkGetOtherPlayerPublicBinaryRecordsV1Forbidden with default headers values
func NewBulkGetOtherPlayerPublicBinaryRecordsV1Forbidden() *BulkGetOtherPlayerPublicBinaryRecordsV1Forbidden {
	return &BulkGetOtherPlayerPublicBinaryRecordsV1Forbidden{}
}

/*BulkGetOtherPlayerPublicBinaryRecordsV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type BulkGetOtherPlayerPublicBinaryRecordsV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1Forbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public/bulk][%d] bulkGetOtherPlayerPublicBinaryRecordsV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1Forbidden) ToJSONString() string {
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

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewBulkGetOtherPlayerPublicBinaryRecordsV1InternalServerError creates a BulkGetOtherPlayerPublicBinaryRecordsV1InternalServerError with default headers values
func NewBulkGetOtherPlayerPublicBinaryRecordsV1InternalServerError() *BulkGetOtherPlayerPublicBinaryRecordsV1InternalServerError {
	return &BulkGetOtherPlayerPublicBinaryRecordsV1InternalServerError{}
}

/*BulkGetOtherPlayerPublicBinaryRecordsV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18343</td><td>unable to get record</td></tr></table>
*/
type BulkGetOtherPlayerPublicBinaryRecordsV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1InternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/users/{userId}/binaries/public/bulk][%d] bulkGetOtherPlayerPublicBinaryRecordsV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1InternalServerError) ToJSONString() string {
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

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *BulkGetOtherPlayerPublicBinaryRecordsV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
