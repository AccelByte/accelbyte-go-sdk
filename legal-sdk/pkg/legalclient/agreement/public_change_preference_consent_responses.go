// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package agreement

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

// PublicChangePreferenceConsentReader is a Reader for the PublicChangePreferenceConsent structure.
type PublicChangePreferenceConsentReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicChangePreferenceConsentReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicChangePreferenceConsentOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicChangePreferenceConsentBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /agreement/public/agreements/localized-policy-versions/preferences returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicChangePreferenceConsentOK creates a PublicChangePreferenceConsentOK with default headers values
func NewPublicChangePreferenceConsentOK() *PublicChangePreferenceConsentOK {
	return &PublicChangePreferenceConsentOK{}
}

/*PublicChangePreferenceConsentOK handles this case with default header values.

  Successful operation
*/
type PublicChangePreferenceConsentOK struct {
}

func (o *PublicChangePreferenceConsentOK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/public/agreements/localized-policy-versions/preferences][%d] publicChangePreferenceConsentOK ", 200)
}

func (o *PublicChangePreferenceConsentOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewPublicChangePreferenceConsentBadRequest creates a PublicChangePreferenceConsentBadRequest with default headers values
func NewPublicChangePreferenceConsentBadRequest() *PublicChangePreferenceConsentBadRequest {
	return &PublicChangePreferenceConsentBadRequest{}
}

/*PublicChangePreferenceConsentBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>40017</td><td>Policy with id : [{policyId}] is not marketing preference</td></tr><tr><td>40045</td><td>errors.net.accelbyte.platform.legal.user_id_needed</td></tr></table>
*/
type PublicChangePreferenceConsentBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *PublicChangePreferenceConsentBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /agreement/public/agreements/localized-policy-versions/preferences][%d] publicChangePreferenceConsentBadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicChangePreferenceConsentBadRequest) ToJSONString() string {
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

func (o *PublicChangePreferenceConsentBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicChangePreferenceConsentBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
