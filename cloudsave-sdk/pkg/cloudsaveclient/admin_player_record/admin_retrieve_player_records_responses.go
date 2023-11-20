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

// AdminRetrievePlayerRecordsReader is a Reader for the AdminRetrievePlayerRecords structure.
type AdminRetrievePlayerRecordsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminRetrievePlayerRecordsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminRetrievePlayerRecordsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminRetrievePlayerRecordsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminRetrievePlayerRecordsUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminRetrievePlayerRecordsForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminRetrievePlayerRecordsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminRetrievePlayerRecordsOK creates a AdminRetrievePlayerRecordsOK with default headers values
func NewAdminRetrievePlayerRecordsOK() *AdminRetrievePlayerRecordsOK {
	return &AdminRetrievePlayerRecordsOK{}
}

/*AdminRetrievePlayerRecordsOK handles this case with default header values.

  Successful operation
*/
type AdminRetrievePlayerRecordsOK struct {
	Payload *cloudsaveclientmodels.ModelsListPlayerRecordKeysResponse
}

func (o *AdminRetrievePlayerRecordsOK) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records][%d] adminRetrievePlayerRecordsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminRetrievePlayerRecordsOK) ToJSONString() string {
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

func (o *AdminRetrievePlayerRecordsOK) GetPayload() *cloudsaveclientmodels.ModelsListPlayerRecordKeysResponse {
	return o.Payload
}

func (o *AdminRetrievePlayerRecordsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsListPlayerRecordKeysResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminRetrievePlayerRecordsBadRequest creates a AdminRetrievePlayerRecordsBadRequest with default headers values
func NewAdminRetrievePlayerRecordsBadRequest() *AdminRetrievePlayerRecordsBadRequest {
	return &AdminRetrievePlayerRecordsBadRequest{}
}

/*AdminRetrievePlayerRecordsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18113</td><td>invalid request body</td></tr></table>
*/
type AdminRetrievePlayerRecordsBadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminRetrievePlayerRecordsBadRequest) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records][%d] adminRetrievePlayerRecordsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminRetrievePlayerRecordsBadRequest) ToJSONString() string {
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

func (o *AdminRetrievePlayerRecordsBadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminRetrievePlayerRecordsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminRetrievePlayerRecordsUnauthorized creates a AdminRetrievePlayerRecordsUnauthorized with default headers values
func NewAdminRetrievePlayerRecordsUnauthorized() *AdminRetrievePlayerRecordsUnauthorized {
	return &AdminRetrievePlayerRecordsUnauthorized{}
}

/*AdminRetrievePlayerRecordsUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminRetrievePlayerRecordsUnauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminRetrievePlayerRecordsUnauthorized) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records][%d] adminRetrievePlayerRecordsUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminRetrievePlayerRecordsUnauthorized) ToJSONString() string {
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

func (o *AdminRetrievePlayerRecordsUnauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminRetrievePlayerRecordsUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminRetrievePlayerRecordsForbidden creates a AdminRetrievePlayerRecordsForbidden with default headers values
func NewAdminRetrievePlayerRecordsForbidden() *AdminRetrievePlayerRecordsForbidden {
	return &AdminRetrievePlayerRecordsForbidden{}
}

/*AdminRetrievePlayerRecordsForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type AdminRetrievePlayerRecordsForbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminRetrievePlayerRecordsForbidden) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records][%d] adminRetrievePlayerRecordsForbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminRetrievePlayerRecordsForbidden) ToJSONString() string {
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

func (o *AdminRetrievePlayerRecordsForbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminRetrievePlayerRecordsForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminRetrievePlayerRecordsInternalServerError creates a AdminRetrievePlayerRecordsInternalServerError with default headers values
func NewAdminRetrievePlayerRecordsInternalServerError() *AdminRetrievePlayerRecordsInternalServerError {
	return &AdminRetrievePlayerRecordsInternalServerError{}
}

/*AdminRetrievePlayerRecordsInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18114</td><td>unable to retrieve list of key records</td></tr></table>
*/
type AdminRetrievePlayerRecordsInternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *AdminRetrievePlayerRecordsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /cloudsave/v1/admin/namespaces/{namespace}/users/{userId}/records][%d] adminRetrievePlayerRecordsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminRetrievePlayerRecordsInternalServerError) ToJSONString() string {
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

func (o *AdminRetrievePlayerRecordsInternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *AdminRetrievePlayerRecordsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
