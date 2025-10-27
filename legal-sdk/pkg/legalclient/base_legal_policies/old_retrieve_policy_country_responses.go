// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// OldRetrievePolicyCountryReader is a Reader for the OldRetrievePolicyCountry structure.
type OldRetrievePolicyCountryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *OldRetrievePolicyCountryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewOldRetrievePolicyCountryOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewOldRetrievePolicyCountryNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/base-policies/{basePolicyId}/countries/{countryCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewOldRetrievePolicyCountryOK creates a OldRetrievePolicyCountryOK with default headers values
func NewOldRetrievePolicyCountryOK() *OldRetrievePolicyCountryOK {
	return &OldRetrievePolicyCountryOK{}
}

/*OldRetrievePolicyCountryOK handles this case with default header values.

  successful operation
*/
type OldRetrievePolicyCountryOK struct {
	Payload *legalclientmodels.RetrievePolicyResponse
}

func (o *OldRetrievePolicyCountryOK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/base-policies/{basePolicyId}/countries/{countryCode}][%d] oldRetrievePolicyCountryOK  %+v", 200, o.ToJSONString())
}

func (o *OldRetrievePolicyCountryOK) ToJSONString() string {
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

func (o *OldRetrievePolicyCountryOK) GetPayload() *legalclientmodels.RetrievePolicyResponse {
	return o.Payload
}

func (o *OldRetrievePolicyCountryOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.RetrievePolicyResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewOldRetrievePolicyCountryNotFound creates a OldRetrievePolicyCountryNotFound with default headers values
func NewOldRetrievePolicyCountryNotFound() *OldRetrievePolicyCountryNotFound {
	return &OldRetrievePolicyCountryNotFound{}
}

/*OldRetrievePolicyCountryNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40041</td><td>errors.net.accelbyte.platform.legal.policy_not_found</td></tr></table>
*/
type OldRetrievePolicyCountryNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldRetrievePolicyCountryNotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/base-policies/{basePolicyId}/countries/{countryCode}][%d] oldRetrievePolicyCountryNotFound  %+v", 404, o.ToJSONString())
}

func (o *OldRetrievePolicyCountryNotFound) ToJSONString() string {
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

func (o *OldRetrievePolicyCountryNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldRetrievePolicyCountryNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
