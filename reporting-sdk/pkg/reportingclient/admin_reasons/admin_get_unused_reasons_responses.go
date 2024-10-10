// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_reasons

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

// AdminGetUnusedReasonsReader is a Reader for the AdminGetUnusedReasons structure.
type AdminGetUnusedReasonsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUnusedReasonsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUnusedReasonsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetUnusedReasonsNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetUnusedReasonsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /reporting/v1/admin/namespaces/{namespace}/reasons/unused returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUnusedReasonsOK creates a AdminGetUnusedReasonsOK with default headers values
func NewAdminGetUnusedReasonsOK() *AdminGetUnusedReasonsOK {
	return &AdminGetUnusedReasonsOK{}
}

/*AdminGetUnusedReasonsOK handles this case with default header values.

  OK
*/
type AdminGetUnusedReasonsOK struct {
	Payload *reportingclientmodels.RestapiUnusedReasonListResponse
}

func (o *AdminGetUnusedReasonsOK) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/reasons/unused][%d] adminGetUnusedReasonsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUnusedReasonsOK) ToJSONString() string {
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

func (o *AdminGetUnusedReasonsOK) GetPayload() *reportingclientmodels.RestapiUnusedReasonListResponse {
	return o.Payload
}

func (o *AdminGetUnusedReasonsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiUnusedReasonListResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUnusedReasonsNotFound creates a AdminGetUnusedReasonsNotFound with default headers values
func NewAdminGetUnusedReasonsNotFound() *AdminGetUnusedReasonsNotFound {
	return &AdminGetUnusedReasonsNotFound{}
}

/*AdminGetUnusedReasonsNotFound handles this case with default header values.

  Not Found
*/
type AdminGetUnusedReasonsNotFound struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *AdminGetUnusedReasonsNotFound) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/reasons/unused][%d] adminGetUnusedReasonsNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetUnusedReasonsNotFound) ToJSONString() string {
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

func (o *AdminGetUnusedReasonsNotFound) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *AdminGetUnusedReasonsNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetUnusedReasonsInternalServerError creates a AdminGetUnusedReasonsInternalServerError with default headers values
func NewAdminGetUnusedReasonsInternalServerError() *AdminGetUnusedReasonsInternalServerError {
	return &AdminGetUnusedReasonsInternalServerError{}
}

/*AdminGetUnusedReasonsInternalServerError handles this case with default header values.

  Internal Server Error
*/
type AdminGetUnusedReasonsInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *AdminGetUnusedReasonsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/reasons/unused][%d] adminGetUnusedReasonsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetUnusedReasonsInternalServerError) ToJSONString() string {
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

func (o *AdminGetUnusedReasonsInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *AdminGetUnusedReasonsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
