// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package country

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// PublicGetCountryListV3Reader is a Reader for the PublicGetCountryListV3 structure.
type PublicGetCountryListV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetCountryListV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetCountryListV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewPublicGetCountryListV3InternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/countries returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetCountryListV3OK creates a PublicGetCountryListV3OK with default headers values
func NewPublicGetCountryListV3OK() *PublicGetCountryListV3OK {
	return &PublicGetCountryListV3OK{}
}

/*PublicGetCountryListV3OK handles this case with default header values.

  OK
*/
type PublicGetCountryListV3OK struct {
	Payload []*iamclientmodels.ModelCountryResponse
}

func (o *PublicGetCountryListV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/countries][%d] publicGetCountryListV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetCountryListV3OK) ToJSONString() string {
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

func (o *PublicGetCountryListV3OK) GetPayload() []*iamclientmodels.ModelCountryResponse {
	return o.Payload
}

func (o *PublicGetCountryListV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetCountryListV3InternalServerError creates a PublicGetCountryListV3InternalServerError with default headers values
func NewPublicGetCountryListV3InternalServerError() *PublicGetCountryListV3InternalServerError {
	return &PublicGetCountryListV3InternalServerError{}
}

/*PublicGetCountryListV3InternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20000</td><td>internal server error</td></tr></table>
*/
type PublicGetCountryListV3InternalServerError struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetCountryListV3InternalServerError) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/countries][%d] publicGetCountryListV3InternalServerError  %+v", 500, o.ToJSONString())
}

func (o *PublicGetCountryListV3InternalServerError) ToJSONString() string {
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

func (o *PublicGetCountryListV3InternalServerError) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetCountryListV3InternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
