// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_game_record

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

// GetGameRecordsBulkReader is a Reader for the GetGameRecordsBulk structure.
type GetGameRecordsBulkReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *GetGameRecordsBulkReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewGetGameRecordsBulkOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewGetGameRecordsBulkBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewGetGameRecordsBulkUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewGetGameRecordsBulkForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewGetGameRecordsBulkNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewGetGameRecordsBulkInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /cloudsave/v1/namespaces/{namespace}/records/bulk returns an error %d: %s", response.Code(), string(data))
	}
}

// NewGetGameRecordsBulkOK creates a GetGameRecordsBulkOK with default headers values
func NewGetGameRecordsBulkOK() *GetGameRecordsBulkOK {
	return &GetGameRecordsBulkOK{}
}

/*GetGameRecordsBulkOK handles this case with default header values.

  OK
*/
type GetGameRecordsBulkOK struct {
	Payload *cloudsaveclientmodels.ModelsBulkGetGameRecordResponse
}

func (o *GetGameRecordsBulkOK) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/records/bulk][%d] getGameRecordsBulkOK  %+v", 200, o.ToJSONString())
}

func (o *GetGameRecordsBulkOK) ToJSONString() string {
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

func (o *GetGameRecordsBulkOK) GetPayload() *cloudsaveclientmodels.ModelsBulkGetGameRecordResponse {
	return o.Payload
}

func (o *GetGameRecordsBulkOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(cloudsaveclientmodels.ModelsBulkGetGameRecordResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewGetGameRecordsBulkBadRequest creates a GetGameRecordsBulkBadRequest with default headers values
func NewGetGameRecordsBulkBadRequest() *GetGameRecordsBulkBadRequest {
	return &GetGameRecordsBulkBadRequest{}
}

/*GetGameRecordsBulkBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18128</td><td>invalid request body</td></tr><tr><td>18129</td><td>request record keys list exceed max size [%d]</td></tr></table>
*/
type GetGameRecordsBulkBadRequest struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetGameRecordsBulkBadRequest) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/records/bulk][%d] getGameRecordsBulkBadRequest  %+v", 400, o.ToJSONString())
}

func (o *GetGameRecordsBulkBadRequest) ToJSONString() string {
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

func (o *GetGameRecordsBulkBadRequest) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetGameRecordsBulkBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGameRecordsBulkUnauthorized creates a GetGameRecordsBulkUnauthorized with default headers values
func NewGetGameRecordsBulkUnauthorized() *GetGameRecordsBulkUnauthorized {
	return &GetGameRecordsBulkUnauthorized{}
}

/*GetGameRecordsBulkUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type GetGameRecordsBulkUnauthorized struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetGameRecordsBulkUnauthorized) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/records/bulk][%d] getGameRecordsBulkUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *GetGameRecordsBulkUnauthorized) ToJSONString() string {
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

func (o *GetGameRecordsBulkUnauthorized) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetGameRecordsBulkUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGameRecordsBulkForbidden creates a GetGameRecordsBulkForbidden with default headers values
func NewGetGameRecordsBulkForbidden() *GetGameRecordsBulkForbidden {
	return &GetGameRecordsBulkForbidden{}
}

/*GetGameRecordsBulkForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permission</td></tr></table>
*/
type GetGameRecordsBulkForbidden struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetGameRecordsBulkForbidden) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/records/bulk][%d] getGameRecordsBulkForbidden  %+v", 403, o.ToJSONString())
}

func (o *GetGameRecordsBulkForbidden) ToJSONString() string {
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

func (o *GetGameRecordsBulkForbidden) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetGameRecordsBulkForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGameRecordsBulkNotFound creates a GetGameRecordsBulkNotFound with default headers values
func NewGetGameRecordsBulkNotFound() *GetGameRecordsBulkNotFound {
	return &GetGameRecordsBulkNotFound{}
}

/*GetGameRecordsBulkNotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18133</td><td>record not found</td></tr></table>
*/
type GetGameRecordsBulkNotFound struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetGameRecordsBulkNotFound) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/records/bulk][%d] getGameRecordsBulkNotFound  %+v", 404, o.ToJSONString())
}

func (o *GetGameRecordsBulkNotFound) ToJSONString() string {
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

func (o *GetGameRecordsBulkNotFound) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetGameRecordsBulkNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewGetGameRecordsBulkInternalServerError creates a GetGameRecordsBulkInternalServerError with default headers values
func NewGetGameRecordsBulkInternalServerError() *GetGameRecordsBulkInternalServerError {
	return &GetGameRecordsBulkInternalServerError{}
}

/*GetGameRecordsBulkInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>18130</td><td>unable to get record</td></tr><tr><td>18131</td><td>unable to decode record</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type GetGameRecordsBulkInternalServerError struct {
	Payload *cloudsaveclientmodels.ModelsResponseError
}

func (o *GetGameRecordsBulkInternalServerError) Error() string {
	return fmt.Sprintf("[POST /cloudsave/v1/namespaces/{namespace}/records/bulk][%d] getGameRecordsBulkInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *GetGameRecordsBulkInternalServerError) ToJSONString() string {
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

func (o *GetGameRecordsBulkInternalServerError) GetPayload() *cloudsaveclientmodels.ModelsResponseError {
	return o.Payload
}

func (o *GetGameRecordsBulkInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
