// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_profile

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// AdminGetUserProfilePublicInfoByIdsReader is a Reader for the AdminGetUserProfilePublicInfoByIds structure.
type AdminGetUserProfilePublicInfoByIdsReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminGetUserProfilePublicInfoByIdsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminGetUserProfilePublicInfoByIdsOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminGetUserProfilePublicInfoByIdsBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /basic/v1/admin/namespaces/{namespace}/profiles/public returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminGetUserProfilePublicInfoByIdsOK creates a AdminGetUserProfilePublicInfoByIdsOK with default headers values
func NewAdminGetUserProfilePublicInfoByIdsOK() *AdminGetUserProfilePublicInfoByIdsOK {
	return &AdminGetUserProfilePublicInfoByIdsOK{}
}

/*AdminGetUserProfilePublicInfoByIdsOK handles this case with default header values.

  Successful operation
*/
type AdminGetUserProfilePublicInfoByIdsOK struct {
	Payload []*basicclientmodels.UserProfilePublicInfo
}

func (o *AdminGetUserProfilePublicInfoByIdsOK) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/profiles/public][%d] adminGetUserProfilePublicInfoByIdsOK  %+v", 200, o.ToJSONString())
}

func (o *AdminGetUserProfilePublicInfoByIdsOK) ToJSONString() string {
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

func (o *AdminGetUserProfilePublicInfoByIdsOK) GetPayload() []*basicclientmodels.UserProfilePublicInfo {
	return o.Payload
}

func (o *AdminGetUserProfilePublicInfoByIdsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminGetUserProfilePublicInfoByIdsBadRequest creates a AdminGetUserProfilePublicInfoByIdsBadRequest with default headers values
func NewAdminGetUserProfilePublicInfoByIdsBadRequest() *AdminGetUserProfilePublicInfoByIdsBadRequest {
	return &AdminGetUserProfilePublicInfoByIdsBadRequest{}
}

/*AdminGetUserProfilePublicInfoByIdsBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type AdminGetUserProfilePublicInfoByIdsBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *AdminGetUserProfilePublicInfoByIdsBadRequest) Error() string {
	return fmt.Sprintf("[POST /basic/v1/admin/namespaces/{namespace}/profiles/public][%d] adminGetUserProfilePublicInfoByIdsBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminGetUserProfilePublicInfoByIdsBadRequest) ToJSONString() string {
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

func (o *AdminGetUserProfilePublicInfoByIdsBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *AdminGetUserProfilePublicInfoByIdsBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(basicclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
