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

// AdminFindExtensionCategoryListReader is a Reader for the AdminFindExtensionCategoryList structure.
type AdminFindExtensionCategoryListReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminFindExtensionCategoryListReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminFindExtensionCategoryListOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminFindExtensionCategoryListBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminFindExtensionCategoryListInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /reporting/v1/admin/extensionCategories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminFindExtensionCategoryListOK creates a AdminFindExtensionCategoryListOK with default headers values
func NewAdminFindExtensionCategoryListOK() *AdminFindExtensionCategoryListOK {
	return &AdminFindExtensionCategoryListOK{}
}

/*AdminFindExtensionCategoryListOK handles this case with default header values.


 */
type AdminFindExtensionCategoryListOK struct {
	Payload *reportingclientmodels.RestapiExtensionCategoryListAPIResponse
}

func (o *AdminFindExtensionCategoryListOK) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/extensionCategories][%d] adminFindExtensionCategoryListOK  %+v", 200, o.ToJSONString())
}

func (o *AdminFindExtensionCategoryListOK) ToJSONString() string {
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

func (o *AdminFindExtensionCategoryListOK) GetPayload() *reportingclientmodels.RestapiExtensionCategoryListAPIResponse {
	return o.Payload
}

func (o *AdminFindExtensionCategoryListOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiExtensionCategoryListAPIResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminFindExtensionCategoryListBadRequest creates a AdminFindExtensionCategoryListBadRequest with default headers values
func NewAdminFindExtensionCategoryListBadRequest() *AdminFindExtensionCategoryListBadRequest {
	return &AdminFindExtensionCategoryListBadRequest{}
}

/*AdminFindExtensionCategoryListBadRequest handles this case with default header values.


 */
type AdminFindExtensionCategoryListBadRequest struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *AdminFindExtensionCategoryListBadRequest) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/extensionCategories][%d] adminFindExtensionCategoryListBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminFindExtensionCategoryListBadRequest) ToJSONString() string {
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

func (o *AdminFindExtensionCategoryListBadRequest) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *AdminFindExtensionCategoryListBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminFindExtensionCategoryListInternalServerError creates a AdminFindExtensionCategoryListInternalServerError with default headers values
func NewAdminFindExtensionCategoryListInternalServerError() *AdminFindExtensionCategoryListInternalServerError {
	return &AdminFindExtensionCategoryListInternalServerError{}
}

/*AdminFindExtensionCategoryListInternalServerError handles this case with default header values.


 */
type AdminFindExtensionCategoryListInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *AdminFindExtensionCategoryListInternalServerError) Error() string {
	return fmt.Sprintf("[GET /reporting/v1/admin/extensionCategories][%d] adminFindExtensionCategoryListInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminFindExtensionCategoryListInternalServerError) ToJSONString() string {
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

func (o *AdminFindExtensionCategoryListInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *AdminFindExtensionCategoryListInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
