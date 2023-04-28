// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_configurations

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
)

// UpsertReader is a Reader for the Upsert structure.
type UpsertReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpsertReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpsertOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpsertBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewUpsertInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /reporting/v1/admin/namespaces/{namespace}/configurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpsertOK creates a UpsertOK with default headers values
func NewUpsertOK() *UpsertOK {
	return &UpsertOK{}
}

/*UpsertOK handles this case with default header values.


 */
type UpsertOK struct {
	Payload *reportingclientmodels.RestapiConfigResponse
}

func (o *UpsertOK) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/configurations][%d] upsertOK  %+v", 200, o.ToJSONString())
}

func (o *UpsertOK) ToJSONString() string {
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

func (o *UpsertOK) GetPayload() *reportingclientmodels.RestapiConfigResponse {
	return o.Payload
}

func (o *UpsertOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiConfigResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpsertBadRequest creates a UpsertBadRequest with default headers values
func NewUpsertBadRequest() *UpsertBadRequest {
	return &UpsertBadRequest{}
}

/*UpsertBadRequest handles this case with default header values.


 */
type UpsertBadRequest struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *UpsertBadRequest) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/configurations][%d] upsertBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpsertBadRequest) ToJSONString() string {
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

func (o *UpsertBadRequest) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *UpsertBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpsertInternalServerError creates a UpsertInternalServerError with default headers values
func NewUpsertInternalServerError() *UpsertInternalServerError {
	return &UpsertInternalServerError{}
}

/*UpsertInternalServerError handles this case with default header values.


 */
type UpsertInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *UpsertInternalServerError) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/namespaces/{namespace}/configurations][%d] upsertInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *UpsertInternalServerError) ToJSONString() string {
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

func (o *UpsertInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *UpsertInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
