// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_record

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

// AdminListAdminUserRecordsV1Reader is a Reader for the AdminListAdminUserRecordsV1 structure.
type AdminListAdminUserRecordsV1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListAdminUserRecordsV1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListAdminUserRecordsV1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminListAdminUserRecordsV1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminListAdminUserRecordsV1Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminListAdminUserRecordsV1Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListAdminUserRecordsV1InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListAdminUserRecordsV1OK creates a AdminListAdminUserRecordsV1OK with default headers values
func NewAdminListAdminUserRecordsV1OK() *AdminListAdminUserRecordsV1OK {
	return &AdminListAdminUserRecordsV1OK{}
}

/*AdminListAdminUserRecordsV1OK handles this case with default header values.

  Successful operation
*/
type AdminListAdminUserRecordsV1OK struct {
	Payload *cloudsaveclientmodels.ModelsListAdminPlayerRecordKeysResponse
}

func (o *AdminListAdminUserRecordsV1OK) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords][%d] adminListAdminUserRecordsV1OK  %+v", 200, o.ToJSONString())
}

func (o *AdminListAdminUserRecordsV1OK) ToJSONString() string {
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

func (o *AdminListAdminUserRecordsV1OK) GetPayload() *cloudsaveclientmodels.ModelsListAdminPlayerRecordKeysResponse {
	return o.Payload
}

func (o *AdminListAdminUserRecordsV1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsListAdminPlayerRecordKeysResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListAdminUserRecordsV1BadRequest creates a AdminListAdminUserRecordsV1BadRequest with default headers values
func NewAdminListAdminUserRecordsV1BadRequest() *AdminListAdminUserRecordsV1BadRequest {
	return &AdminListAdminUserRecordsV1BadRequest{}
}

/*AdminListAdminUserRecordsV1BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18159</td><td>invalid request body</td></tr></table>
*/
type AdminListAdminUserRecordsV1BadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminListAdminUserRecordsV1BadRequest) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords][%d] adminListAdminUserRecordsV1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminListAdminUserRecordsV1BadRequest) ToJSONString() string {
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

func (o *AdminListAdminUserRecordsV1BadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminListAdminUserRecordsV1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListAdminUserRecordsV1Unauthorized creates a AdminListAdminUserRecordsV1Unauthorized with default headers values
func NewAdminListAdminUserRecordsV1Unauthorized() *AdminListAdminUserRecordsV1Unauthorized {
	return &AdminListAdminUserRecordsV1Unauthorized{}
}

/*AdminListAdminUserRecordsV1Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminListAdminUserRecordsV1Unauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminListAdminUserRecordsV1Unauthorized) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords][%d] adminListAdminUserRecordsV1Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminListAdminUserRecordsV1Unauthorized) ToJSONString() string {
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

func (o *AdminListAdminUserRecordsV1Unauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminListAdminUserRecordsV1Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListAdminUserRecordsV1Forbidden creates a AdminListAdminUserRecordsV1Forbidden with default headers values
func NewAdminListAdminUserRecordsV1Forbidden() *AdminListAdminUserRecordsV1Forbidden {
	return &AdminListAdminUserRecordsV1Forbidden{}
}

/*AdminListAdminUserRecordsV1Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminListAdminUserRecordsV1Forbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminListAdminUserRecordsV1Forbidden) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords][%d] adminListAdminUserRecordsV1Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminListAdminUserRecordsV1Forbidden) ToJSONString() string {
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

func (o *AdminListAdminUserRecordsV1Forbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminListAdminUserRecordsV1Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminListAdminUserRecordsV1InternalServerError creates a AdminListAdminUserRecordsV1InternalServerError with default headers values
func NewAdminListAdminUserRecordsV1InternalServerError() *AdminListAdminUserRecordsV1InternalServerError {
	return &AdminListAdminUserRecordsV1InternalServerError{}
}

/*AdminListAdminUserRecordsV1InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18160</td><td>unable to retrieve list of key records</td></tr></table>
*/
type AdminListAdminUserRecordsV1InternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminListAdminUserRecordsV1InternalServerError) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/adminrecords][%d] adminListAdminUserRecordsV1InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListAdminUserRecordsV1InternalServerError) ToJSONString() string {
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

func (o *AdminListAdminUserRecordsV1InternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminListAdminUserRecordsV1InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
