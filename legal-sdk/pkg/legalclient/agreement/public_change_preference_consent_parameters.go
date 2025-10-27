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

// NewPublicChangePreferenceConsentParams creates a new PublicChangePreferenceConsentParams object
// with the default values initialized.
func NewPublicChangePreferenceConsentParams() *PublicChangePreferenceConsentParams {
	var ()
	return &PublicChangePreferenceConsentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicChangePreferenceConsentParamsWithTimeout creates a new PublicChangePreferenceConsentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicChangePreferenceConsentParamsWithTimeout(timeout time.Duration) *PublicChangePreferenceConsentParams {
	var ()
	return &PublicChangePreferenceConsentParams{

		timeout: timeout,
	}
}

// NewPublicChangePreferenceConsentParamsWithContext creates a new PublicChangePreferenceConsentParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicChangePreferenceConsentParamsWithContext(ctx context.Context) *PublicChangePreferenceConsentParams {
	var ()
	return &PublicChangePreferenceConsentParams{

		Context: ctx,
	}
}

// NewPublicChangePreferenceConsentParamsWithHTTPClient creates a new PublicChangePreferenceConsentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicChangePreferenceConsentParamsWithHTTPClient(client *http.Client) *PublicChangePreferenceConsentParams {
	var ()
	return &PublicChangePreferenceConsentParams{
		HTTPClient: client,
	}
}

/*PublicChangePreferenceConsentParams contains all the parameters to send to the API endpoint
for the public change preference consent operation typically these are written to a http.Request
*/
type PublicChangePreferenceConsentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*legalclientmodels.AcceptAgreementRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public change preference consent params
func (o *PublicChangePreferenceConsentParams) WithTimeout(timeout time.Duration) *PublicChangePreferenceConsentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public change preference consent params
func (o *PublicChangePreferenceConsentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public change preference consent params
func (o *PublicChangePreferenceConsentParams) WithContext(ctx context.Context) *PublicChangePreferenceConsentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public change preference consent params
func (o *PublicChangePreferenceConsentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public change preference consent params
func (o *PublicChangePreferenceConsentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public change preference consent params
func (o *PublicChangePreferenceConsentParams) WithHTTPClient(client *http.Client) *PublicChangePreferenceConsentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public change preference consent params
func (o *PublicChangePreferenceConsentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public change preference consent params
func (o *PublicChangePreferenceConsentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicChangePreferenceConsentParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public change preference consent params
func (o *PublicChangePreferenceConsentParams) WithBody(body []*legalclientmodels.AcceptAgreementRequest) *PublicChangePreferenceConsentParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public change preference consent params
func (o *PublicChangePreferenceConsentParams) SetBody(body []*legalclientmodels.AcceptAgreementRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *PublicChangePreferenceConsentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
