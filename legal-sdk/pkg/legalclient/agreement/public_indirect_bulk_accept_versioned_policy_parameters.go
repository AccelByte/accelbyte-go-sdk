// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package agreement

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// NewPublicIndirectBulkAcceptVersionedPolicyParams creates a new PublicIndirectBulkAcceptVersionedPolicyParams object
// with the default values initialized.
func NewPublicIndirectBulkAcceptVersionedPolicyParams() *PublicIndirectBulkAcceptVersionedPolicyParams {
	var ()
	return &PublicIndirectBulkAcceptVersionedPolicyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicIndirectBulkAcceptVersionedPolicyParamsWithTimeout creates a new PublicIndirectBulkAcceptVersionedPolicyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicIndirectBulkAcceptVersionedPolicyParamsWithTimeout(timeout time.Duration) *PublicIndirectBulkAcceptVersionedPolicyParams {
	var ()
	return &PublicIndirectBulkAcceptVersionedPolicyParams{

		timeout: timeout,
	}
}

// NewPublicIndirectBulkAcceptVersionedPolicyParamsWithContext creates a new PublicIndirectBulkAcceptVersionedPolicyParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicIndirectBulkAcceptVersionedPolicyParamsWithContext(ctx context.Context) *PublicIndirectBulkAcceptVersionedPolicyParams {
	var ()
	return &PublicIndirectBulkAcceptVersionedPolicyParams{

		Context: ctx,
	}
}

// NewPublicIndirectBulkAcceptVersionedPolicyParamsWithHTTPClient creates a new PublicIndirectBulkAcceptVersionedPolicyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicIndirectBulkAcceptVersionedPolicyParamsWithHTTPClient(client *http.Client) *PublicIndirectBulkAcceptVersionedPolicyParams {
	var ()
	return &PublicIndirectBulkAcceptVersionedPolicyParams{
		HTTPClient: client,
	}
}

/*PublicIndirectBulkAcceptVersionedPolicyParams contains all the parameters to send to the API endpoint
for the public indirect bulk accept versioned policy operation typically these are written to a http.Request
*/
type PublicIndirectBulkAcceptVersionedPolicyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*legalclientmodels.AcceptAgreementRequest
	/*UserID
	  User Id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public indirect bulk accept versioned policy params
func (o *PublicIndirectBulkAcceptVersionedPolicyParams) WithTimeout(timeout time.Duration) *PublicIndirectBulkAcceptVersionedPolicyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public indirect bulk accept versioned policy params
func (o *PublicIndirectBulkAcceptVersionedPolicyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public indirect bulk accept versioned policy params
func (o *PublicIndirectBulkAcceptVersionedPolicyParams) WithContext(ctx context.Context) *PublicIndirectBulkAcceptVersionedPolicyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public indirect bulk accept versioned policy params
func (o *PublicIndirectBulkAcceptVersionedPolicyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public indirect bulk accept versioned policy params
func (o *PublicIndirectBulkAcceptVersionedPolicyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public indirect bulk accept versioned policy params
func (o *PublicIndirectBulkAcceptVersionedPolicyParams) WithHTTPClient(client *http.Client) *PublicIndirectBulkAcceptVersionedPolicyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public indirect bulk accept versioned policy params
func (o *PublicIndirectBulkAcceptVersionedPolicyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public indirect bulk accept versioned policy params
func (o *PublicIndirectBulkAcceptVersionedPolicyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicIndirectBulkAcceptVersionedPolicyParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public indirect bulk accept versioned policy params
func (o *PublicIndirectBulkAcceptVersionedPolicyParams) WithBody(body []*legalclientmodels.AcceptAgreementRequest) *PublicIndirectBulkAcceptVersionedPolicyParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public indirect bulk accept versioned policy params
func (o *PublicIndirectBulkAcceptVersionedPolicyParams) SetBody(body []*legalclientmodels.AcceptAgreementRequest) {
	o.Body = body
}

// WithUserID adds the userID to the public indirect bulk accept versioned policy params
func (o *PublicIndirectBulkAcceptVersionedPolicyParams) WithUserID(userID string) *PublicIndirectBulkAcceptVersionedPolicyParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public indirect bulk accept versioned policy params
func (o *PublicIndirectBulkAcceptVersionedPolicyParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicIndirectBulkAcceptVersionedPolicyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
