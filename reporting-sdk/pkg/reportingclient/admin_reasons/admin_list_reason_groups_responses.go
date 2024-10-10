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

// AdminListReasonGroupsReader is a Reader for the AdminListReasonGroups structure.
type AdminListReasonGroupsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminListReasonGroupsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminListReasonGroupsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminListReasonGroupsInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /reporting/v1/admin/namespaces/{namespace}/reasonGroups returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminListReasonGroupsOK creates a AdminListReasonGroupsOK with default headers values
func NewAdminListReasonGroupsOK() *AdminListReasonGroupsOK {
	return &AdminListReasonGroupsOK{}
}

/*AdminListReasonGroupsOK handles this case with default header values.


 */
type AdminListReasonGroupsOK struct {
	Payload *reportingclientmodels.RestapiReasonGroupListResponse
}

func (o *AdminListReasonGroupsOK) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/reasonGroups][%d] adminListReasonGroupsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminListReasonGroupsOK) ToJSONString() string {
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

func (o *AdminListReasonGroupsOK) GetPayload() *reportingclientmodels.RestapiReasonGroupListResponse {
	return o.Payload
}

func (o *AdminListReasonGroupsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiReasonGroupListResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminListReasonGroupsInternalServerError creates a AdminListReasonGroupsInternalServerError with default headers values
func NewAdminListReasonGroupsInternalServerError() *AdminListReasonGroupsInternalServerError {
	return &AdminListReasonGroupsInternalServerError{}
}

/*AdminListReasonGroupsInternalServerError handles this case with default header values.


 */
type AdminListReasonGroupsInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *AdminListReasonGroupsInternalServerError) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/namespaces/{namespace}/reasonGroups][%d] adminListReasonGroupsInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminListReasonGroupsInternalServerError) ToJSONString() string {
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

func (o *AdminListReasonGroupsInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *AdminListReasonGroupsInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
