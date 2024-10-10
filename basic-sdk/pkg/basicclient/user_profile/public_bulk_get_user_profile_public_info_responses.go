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

// PublicBulkGetUserProfilePublicInfoReader is a Reader for the PublicBulkGetUserProfilePublicInfo structure.
type PublicBulkGetUserProfilePublicInfoReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicBulkGetUserProfilePublicInfoReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicBulkGetUserProfilePublicInfoOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicBulkGetUserProfilePublicInfoBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /basic/v1/public/namespaces/{namespace}/profiles/public returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicBulkGetUserProfilePublicInfoOK creates a PublicBulkGetUserProfilePublicInfoOK with default headers values
func NewPublicBulkGetUserProfilePublicInfoOK() *PublicBulkGetUserProfilePublicInfoOK {
	return &PublicBulkGetUserProfilePublicInfoOK{}
}

/*PublicBulkGetUserProfilePublicInfoOK handles this case with default header values.

  Successful operation
*/
type PublicBulkGetUserProfilePublicInfoOK struct {
	Payload []*basicclientmodels.UserProfilePublicInfo
}

func (o *PublicBulkGetUserProfilePublicInfoOK) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/profiles/public][%d] publicBulkGetUserProfilePublicInfoOK  %+v", 200, o.ToJSONString())
}

func (o *PublicBulkGetUserProfilePublicInfoOK) ToJSONString() string {
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

func (o *PublicBulkGetUserProfilePublicInfoOK) GetPayload() []*basicclientmodels.UserProfilePublicInfo {
	return o.Payload
}

func (o *PublicBulkGetUserProfilePublicInfoOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicBulkGetUserProfilePublicInfoBadRequest creates a PublicBulkGetUserProfilePublicInfoBadRequest with default headers values
func NewPublicBulkGetUserProfilePublicInfoBadRequest() *PublicBulkGetUserProfilePublicInfoBadRequest {
	return &PublicBulkGetUserProfilePublicInfoBadRequest{}
}

/*PublicBulkGetUserProfilePublicInfoBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicBulkGetUserProfilePublicInfoBadRequest struct {
	Payload *basicclientmodels.ValidationErrorEntity
}

func (o *PublicBulkGetUserProfilePublicInfoBadRequest) Error() string {
	return fmt.Sprintf("[POST /basic/v1/public/namespaces/{namespace}/profiles/public][%d] publicBulkGetUserProfilePublicInfoBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicBulkGetUserProfilePublicInfoBadRequest) ToJSONString() string {
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

func (o *PublicBulkGetUserProfilePublicInfoBadRequest) GetPayload() *basicclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicBulkGetUserProfilePublicInfoBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
