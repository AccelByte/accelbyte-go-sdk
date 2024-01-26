// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package revocation

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewUpdateRevocationConfigParams creates a new UpdateRevocationConfigParams object
// with the default values initialized.
func NewUpdateRevocationConfigParams() *UpdateRevocationConfigParams {
	var ()
	return &UpdateRevocationConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateRevocationConfigParamsWithTimeout creates a new UpdateRevocationConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateRevocationConfigParamsWithTimeout(timeout time.Duration) *UpdateRevocationConfigParams {
	var ()
	return &UpdateRevocationConfigParams{

		timeout: timeout,
	}
}

// NewUpdateRevocationConfigParamsWithContext creates a new UpdateRevocationConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateRevocationConfigParamsWithContext(ctx context.Context) *UpdateRevocationConfigParams {
	var ()
	return &UpdateRevocationConfigParams{

		Context: ctx,
	}
}

// NewUpdateRevocationConfigParamsWithHTTPClient creates a new UpdateRevocationConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateRevocationConfigParamsWithHTTPClient(client *http.Client) *UpdateRevocationConfigParams {
	var ()
	return &UpdateRevocationConfigParams{
		HTTPClient: client,
	}
}

/*UpdateRevocationConfigParams contains all the parameters to send to the API endpoint
for the update revocation config operation typically these are written to a http.Request
*/
type UpdateRevocationConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.RevocationConfigUpdate
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update revocation config params
func (o *UpdateRevocationConfigParams) WithTimeout(timeout time.Duration) *UpdateRevocationConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update revocation config params
func (o *UpdateRevocationConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update revocation config params
func (o *UpdateRevocationConfigParams) WithContext(ctx context.Context) *UpdateRevocationConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update revocation config params
func (o *UpdateRevocationConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update revocation config params
func (o *UpdateRevocationConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update revocation config params
func (o *UpdateRevocationConfigParams) WithHTTPClient(client *http.Client) *UpdateRevocationConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update revocation config params
func (o *UpdateRevocationConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update revocation config params
func (o *UpdateRevocationConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateRevocationConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update revocation config params
func (o *UpdateRevocationConfigParams) WithBody(body *platformclientmodels.RevocationConfigUpdate) *UpdateRevocationConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update revocation config params
func (o *UpdateRevocationConfigParams) SetBody(body *platformclientmodels.RevocationConfigUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update revocation config params
func (o *UpdateRevocationConfigParams) WithNamespace(namespace string) *UpdateRevocationConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update revocation config params
func (o *UpdateRevocationConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateRevocationConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
