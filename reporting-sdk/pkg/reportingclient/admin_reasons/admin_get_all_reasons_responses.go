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

// AdminGetAllReasonsReader is a Reader for the AdminGetAllReasons structure.
type AdminGetAllReasonsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetAllReasonsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetAllReasonsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminGetAllReasonsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /reporting/v1/admin/namespaces/{namespace}/reasons/all returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetAllReasonsOK creates a AdminGetAllReasonsOK with default headers values
func NewAdminGetAllReasonsOK() *AdminGetAllReasonsOK {
	return &AdminGetAllReasonsOK{}
}

/*AdminGetAllReasonsOK handles this case with default header values.

  OK
*/
type AdminGetAllReasonsOK struct {
	Payload *reportingclientmodels.RestapiAdminAllReasonsResponse
}

func (o *AdminGetAllReasonsOK) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/reasons/all][%d] adminGetAllReasonsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetAllReasonsOK) ToJSONString() string {
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

func (o *AdminGetAllReasonsOK) GetPayload() *reportingclientmodels.RestapiAdminAllReasonsResponse {
	return o.Payload
}

func (o *AdminGetAllReasonsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiAdminAllReasonsResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetAllReasonsInternalServerError creates a AdminGetAllReasonsInternalServerError with default headers values
func NewAdminGetAllReasonsInternalServerError() *AdminGetAllReasonsInternalServerError {
	return &AdminGetAllReasonsInternalServerError{}
}

/*AdminGetAllReasonsInternalServerError handles this case with default header values.


 */
type AdminGetAllReasonsInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *AdminGetAllReasonsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/reasons/all][%d] adminGetAllReasonsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminGetAllReasonsInternalServerError) ToJSONString() string {
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

func (o *AdminGetAllReasonsInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *AdminGetAllReasonsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
