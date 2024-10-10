// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_player_record

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

// AdminBulkPutPlayerRecordsByKeyHandlerV1Reader is a Reader for the AdminBulkPutPlayerRecordsByKeyHandlerV1 structure.
type AdminBulkPutPlayerRecordsByKeyHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminBulkPutPlayerRecordsByKeyHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminBulkPutPlayerRecordsByKeyHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminBulkPutPlayerRecordsByKeyHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminBulkPutPlayerRecordsByKeyHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminBulkPutPlayerRecordsByKeyHandlerV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminBulkPutPlayerRecordsByKeyHandlerV1OK creates a AdminBulkPutPlayerRecordsByKeyHandlerV1OK with default headers values
func NewAdminBulkPutPlayerRecordsByKeyHandlerV1OK() *AdminBulkPutPlayerRecordsByKeyHandlerV1OK {
	return &AdminBulkPutPlayerRecordsByKeyHandlerV1OK{}
}

/*AdminBulkPutPlayerRecordsByKeyHandlerV1OK handles this case with default header values.

  OK
*/
type AdminBulkPutPlayerRecordsByKeyHandlerV1OK struct {
	Payload []*cloudsaveclientmodels.ModelsBulkUpdatePlayerRecordByKeyResponse
}

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1OK) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk][%d] adminBulkPutPlayerRecordsByKeyHandlerV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1OK) ToJSONString() string {
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

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1OK) GetPayload() []*cloudsaveclientmodels.ModelsBulkUpdatePlayerRecordByKeyResponse {
	return o.Payload
}

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminBulkPutPlayerRecordsByKeyHandlerV1BadRequest creates a AdminBulkPutPlayerRecordsByKeyHandlerV1BadRequest with default headers values
func NewAdminBulkPutPlayerRecordsByKeyHandlerV1BadRequest() *AdminBulkPutPlayerRecordsByKeyHandlerV1BadRequest {
	return &AdminBulkPutPlayerRecordsByKeyHandlerV1BadRequest{}
}

/*AdminBulkPutPlayerRecordsByKeyHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18353</td><td>invalid request body</td></tr><tr><td>18356</td><td>invalid request body: size of the request body must be less than [%d]MB</td></tr><tr><td>18354</td><td>records amount exceeded max limit</td></tr><tr><td>18355</td><td>unable to marshal request body</td></tr></table>
*/
type AdminBulkPutPlayerRecordsByKeyHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk][%d] adminBulkPutPlayerRecordsByKeyHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1BadRequest) ToJSONString() string {
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

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkPutPlayerRecordsByKeyHandlerV1Unauthorized creates a AdminBulkPutPlayerRecordsByKeyHandlerV1Unauthorized with default headers values
func NewAdminBulkPutPlayerRecordsByKeyHandlerV1Unauthorized() *AdminBulkPutPlayerRecordsByKeyHandlerV1Unauthorized {
	return &AdminBulkPutPlayerRecordsByKeyHandlerV1Unauthorized{}
}

/*AdminBulkPutPlayerRecordsByKeyHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminBulkPutPlayerRecordsByKeyHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk][%d] adminBulkPutPlayerRecordsByKeyHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1Unauthorized) ToJSONString() string {
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

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkPutPlayerRecordsByKeyHandlerV1Forbidden creates a AdminBulkPutPlayerRecordsByKeyHandlerV1Forbidden with default headers values
func NewAdminBulkPutPlayerRecordsByKeyHandlerV1Forbidden() *AdminBulkPutPlayerRecordsByKeyHandlerV1Forbidden {
	return &AdminBulkPutPlayerRecordsByKeyHandlerV1Forbidden{}
}

/*AdminBulkPutPlayerRecordsByKeyHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminBulkPutPlayerRecordsByKeyHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk][%d] adminBulkPutPlayerRecordsByKeyHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1Forbidden) ToJSONString() string {
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

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminBulkPutPlayerRecordsByKeyHandlerV1InternalServerError creates a AdminBulkPutPlayerRecordsByKeyHandlerV1InternalServerError with default headers values
func NewAdminBulkPutPlayerRecordsByKeyHandlerV1InternalServerError() *AdminBulkPutPlayerRecordsByKeyHandlerV1InternalServerError {
	return &AdminBulkPutPlayerRecordsByKeyHandlerV1InternalServerError{}
}

/*AdminBulkPutPlayerRecordsByKeyHandlerV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type AdminBulkPutPlayerRecordsByKeyHandlerV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1InternalServerError) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/records/{key}/bulk][%d] adminBulkPutPlayerRecordsByKeyHandlerV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1InternalServerError) ToJSONString() string {
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

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminBulkPutPlayerRecordsByKeyHandlerV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
