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

// AdminGetReasonReader is a Reader for the AdminGetReason structure.
type AdminGetReasonReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetReasonReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetReasonOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminGetReasonNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetReasonInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetReasonOK creates a AdminGetReasonOK with default headers values
func NewAdminGetReasonOK() *AdminGetReasonOK {
	return &AdminGetReasonOK{}
}

/*AdminGetReasonOK handles this case with default header values.

  OK
*/
type AdminGetReasonOK struct {
	Payload *reportingclientmodels.RestapiAdminReasonResponse
}

func (o *AdminGetReasonOK) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}][%d] adminGetReasonOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetReasonOK) ToJSONString() string {
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

func (o *AdminGetReasonOK) GetPayload() *reportingclientmodels.RestapiAdminReasonResponse {
	return o.Payload
}

func (o *AdminGetReasonOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiAdminReasonResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetReasonNotFound creates a AdminGetReasonNotFound with default headers values
func NewAdminGetReasonNotFound() *AdminGetReasonNotFound {
	return &AdminGetReasonNotFound{}
}

/*AdminGetReasonNotFound handles this case with default header values.


 */
type AdminGetReasonNotFound struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *AdminGetReasonNotFound) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}][%d] adminGetReasonNotFound  %+v", 404, o.ToJSONString())
}

func (o *AdminGetReasonNotFound) ToJSONString() string {
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

func (o *AdminGetReasonNotFound) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *AdminGetReasonNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminGetReasonInternalServerError creates a AdminGetReasonInternalServerError with default headers values
func NewAdminGetReasonInternalServerError() *AdminGetReasonInternalServerError {
	return &AdminGetReasonInternalServerError{}
}

/*AdminGetReasonInternalServerError handles this case with default header values.


 */
type AdminGetReasonInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *AdminGetReasonInternalServerError) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/reasons/{reasonId}][%d] adminGetReasonInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetReasonInternalServerError) ToJSONString() string {
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

func (o *AdminGetReasonInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *AdminGetReasonInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
