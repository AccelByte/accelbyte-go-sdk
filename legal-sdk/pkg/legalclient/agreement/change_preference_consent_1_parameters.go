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

// NewChangePreferenceConsent1Params creates a new ChangePreferenceConsent1Params object
// with the default values initialized.
func NewChangePreferenceConsent1Params() *ChangePreferenceConsent1Params {
	var ()
	return &ChangePreferenceConsent1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewChangePreferenceConsent1ParamsWithTimeout creates a new ChangePreferenceConsent1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewChangePreferenceConsent1ParamsWithTimeout(timeout time.Duration) *ChangePreferenceConsent1Params {
	var ()
	return &ChangePreferenceConsent1Params{

		timeout: timeout,
	}
}

// NewChangePreferenceConsent1ParamsWithContext creates a new ChangePreferenceConsent1Params object
// with the default values initialized, and the ability to set a context for a request
func NewChangePreferenceConsent1ParamsWithContext(ctx context.Context) *ChangePreferenceConsent1Params {
	var ()
	return &ChangePreferenceConsent1Params{

		Context: ctx,
	}
}

// NewChangePreferenceConsent1ParamsWithHTTPClient creates a new ChangePreferenceConsent1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewChangePreferenceConsent1ParamsWithHTTPClient(client *http.Client) *ChangePreferenceConsent1Params {
	var ()
	return &ChangePreferenceConsent1Params{
		HTTPClient: client,
	}
}

/*ChangePreferenceConsent1Params contains all the parameters to send to the API endpoint
for the change preference consent 1 operation typically these are written to a http.Request
*/
type ChangePreferenceConsent1Params struct {

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

// WithTimeout adds the timeout to the change preference consent 1 params
func (o *ChangePreferenceConsent1Params) WithTimeout(timeout time.Duration) *ChangePreferenceConsent1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the change preference consent 1 params
func (o *ChangePreferenceConsent1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the change preference consent 1 params
func (o *ChangePreferenceConsent1Params) WithContext(ctx context.Context) *ChangePreferenceConsent1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the change preference consent 1 params
func (o *ChangePreferenceConsent1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the change preference consent 1 params
func (o *ChangePreferenceConsent1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the change preference consent 1 params
func (o *ChangePreferenceConsent1Params) WithHTTPClient(client *http.Client) *ChangePreferenceConsent1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the change preference consent 1 params
func (o *ChangePreferenceConsent1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the change preference consent 1 params
func (o *ChangePreferenceConsent1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ChangePreferenceConsent1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the change preference consent 1 params
func (o *ChangePreferenceConsent1Params) WithBody(body []*legalclientmodels.AcceptAgreementRequest) *ChangePreferenceConsent1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the change preference consent 1 params
func (o *ChangePreferenceConsent1Params) SetBody(body []*legalclientmodels.AcceptAgreementRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *ChangePreferenceConsent1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
