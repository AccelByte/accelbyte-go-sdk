// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_extension_categories_and_auto_moderation_actions

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

// AdminFindActionListReader is a Reader for the AdminFindActionList structure.
type AdminFindActionListReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminFindActionListReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminFindActionListOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminFindActionListBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminFindActionListInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /reporting/v1/admin/extensionActions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminFindActionListOK creates a AdminFindActionListOK with default headers values
func NewAdminFindActionListOK() *AdminFindActionListOK {
	return &AdminFindActionListOK{}
}

/*AdminFindActionListOK handles this case with default header values.


 */
type AdminFindActionListOK struct {
	Payload *reportingclientmodels.RestapiActionListAPIResponse
}

func (o *AdminFindActionListOK) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/extensionActions][%d] adminFindActionListOK  %+v", 200, o.ToJSONString())
}

func (o *AdminFindActionListOK) ToJSONString() string {
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

func (o *AdminFindActionListOK) GetPayload() *reportingclientmodels.RestapiActionListAPIResponse {
	return o.Payload
}

func (o *AdminFindActionListOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiActionListAPIResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminFindActionListBadRequest creates a AdminFindActionListBadRequest with default headers values
func NewAdminFindActionListBadRequest() *AdminFindActionListBadRequest {
	return &AdminFindActionListBadRequest{}
}

/*AdminFindActionListBadRequest handles this case with default header values.


 */
type AdminFindActionListBadRequest struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *AdminFindActionListBadRequest) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/extensionActions][%d] adminFindActionListBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminFindActionListBadRequest) ToJSONString() string {
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

func (o *AdminFindActionListBadRequest) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *AdminFindActionListBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminFindActionListInternalServerError creates a AdminFindActionListInternalServerError with default headers values
func NewAdminFindActionListInternalServerError() *AdminFindActionListInternalServerError {
	return &AdminFindActionListInternalServerError{}
}

/*AdminFindActionListInternalServerError handles this case with default header values.


 */
type AdminFindActionListInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *AdminFindActionListInternalServerError) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/extensionActions][%d] adminFindActionListInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminFindActionListInternalServerError) ToJSONString() string {
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

func (o *AdminFindActionListInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *AdminFindActionListInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
