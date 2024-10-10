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

// AdminPutPlayerRecordsHandlerV1Reader is a Reader for the AdminPutPlayerRecordsHandlerV1 structure.
type AdminPutPlayerRecordsHandlerV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminPutPlayerRecordsHandlerV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminPutPlayerRecordsHandlerV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminPutPlayerRecordsHandlerV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminPutPlayerRecordsHandlerV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminPutPlayerRecordsHandlerV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminPutPlayerRecordsHandlerV1OK creates a AdminPutPlayerRecordsHandlerV1OK with default headers values
func NewAdminPutPlayerRecordsHandlerV1OK() *AdminPutPlayerRecordsHandlerV1OK {
	return &AdminPutPlayerRecordsHandlerV1OK{}
}

/*AdminPutPlayerRecordsHandlerV1OK handles this case with default header values.

  OK
*/
type AdminPutPlayerRecordsHandlerV1OK struct {
	Payload []*cloudsaveclientmodels.ModelsBulkUpdatePlayerRecordResponse
}

func (o *AdminPutPlayerRecordsHandlerV1OK) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk][%d] adminPutPlayerRecordsHandlerV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminPutPlayerRecordsHandlerV1OK) ToJSONString() string {
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

func (o *AdminPutPlayerRecordsHandlerV1OK) GetPayload() []*cloudsaveclientmodels.ModelsBulkUpdatePlayerRecordResponse {
	return o.Payload
}

func (o *AdminPutPlayerRecordsHandlerV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutPlayerRecordsHandlerV1BadRequest creates a AdminPutPlayerRecordsHandlerV1BadRequest with default headers values
func NewAdminPutPlayerRecordsHandlerV1BadRequest() *AdminPutPlayerRecordsHandlerV1BadRequest {
	return &AdminPutPlayerRecordsHandlerV1BadRequest{}
}

/*AdminPutPlayerRecordsHandlerV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18353</td><td>invalid request body</td></tr><tr><td>18356</td><td>invalid request body: size of the request body must be less than [%d]MB</td></tr><tr><td>18354</td><td>records amount exceeded max limit</td></tr><tr><td>18355</td><td>unable to marshal request body</td></tr></table>
*/
type AdminPutPlayerRecordsHandlerV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerRecordsHandlerV1BadRequest) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk][%d] adminPutPlayerRecordsHandlerV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminPutPlayerRecordsHandlerV1BadRequest) ToJSONString() string {
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

func (o *AdminPutPlayerRecordsHandlerV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerRecordsHandlerV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutPlayerRecordsHandlerV1Unauthorized creates a AdminPutPlayerRecordsHandlerV1Unauthorized with default headers values
func NewAdminPutPlayerRecordsHandlerV1Unauthorized() *AdminPutPlayerRecordsHandlerV1Unauthorized {
	return &AdminPutPlayerRecordsHandlerV1Unauthorized{}
}

/*AdminPutPlayerRecordsHandlerV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminPutPlayerRecordsHandlerV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerRecordsHandlerV1Unauthorized) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk][%d] adminPutPlayerRecordsHandlerV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminPutPlayerRecordsHandlerV1Unauthorized) ToJSONString() string {
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

func (o *AdminPutPlayerRecordsHandlerV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerRecordsHandlerV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminPutPlayerRecordsHandlerV1Forbidden creates a AdminPutPlayerRecordsHandlerV1Forbidden with default headers values
func NewAdminPutPlayerRecordsHandlerV1Forbidden() *AdminPutPlayerRecordsHandlerV1Forbidden {
	return &AdminPutPlayerRecordsHandlerV1Forbidden{}
}

/*AdminPutPlayerRecordsHandlerV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminPutPlayerRecordsHandlerV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminPutPlayerRecordsHandlerV1Forbidden) Error() string {
	return fmt.Sprintf("[PUT /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records/bulk][%d] adminPutPlayerRecordsHandlerV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminPutPlayerRecordsHandlerV1Forbidden) ToJSONString() string {
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

func (o *AdminPutPlayerRecordsHandlerV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminPutPlayerRecordsHandlerV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
