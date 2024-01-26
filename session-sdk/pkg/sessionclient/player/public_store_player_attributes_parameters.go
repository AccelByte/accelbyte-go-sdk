// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package player

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// NewPublicStorePlayerAttributesParams creates a new PublicStorePlayerAttributesParams object
// with the default values initialized.
func NewPublicStorePlayerAttributesParams() *PublicStorePlayerAttributesParams {
	var ()
	return &PublicStorePlayerAttributesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicStorePlayerAttributesParamsWithTimeout creates a new PublicStorePlayerAttributesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicStorePlayerAttributesParamsWithTimeout(timeout time.Duration) *PublicStorePlayerAttributesParams {
	var ()
	return &PublicStorePlayerAttributesParams{

		timeout: timeout,
	}
}

// NewPublicStorePlayerAttributesParamsWithContext creates a new PublicStorePlayerAttributesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicStorePlayerAttributesParamsWithContext(ctx context.Context) *PublicStorePlayerAttributesParams {
	var ()
	return &PublicStorePlayerAttributesParams{

		Context: ctx,
	}
}

// NewPublicStorePlayerAttributesParamsWithHTTPClient creates a new PublicStorePlayerAttributesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicStorePlayerAttributesParamsWithHTTPClient(client *http.Client) *PublicStorePlayerAttributesParams {
	var ()
	return &PublicStorePlayerAttributesParams{
		HTTPClient: client,
	}
}

/*PublicStorePlayerAttributesParams contains all the parameters to send to the API endpoint
for the public store player attributes operation typically these are written to a http.Request
*/
type PublicStorePlayerAttributesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsPlayerAttributesRequestBody
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public store player attributes params
func (o *PublicStorePlayerAttributesParams) WithTimeout(timeout time.Duration) *PublicStorePlayerAttributesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public store player attributes params
func (o *PublicStorePlayerAttributesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public store player attributes params
func (o *PublicStorePlayerAttributesParams) WithContext(ctx context.Context) *PublicStorePlayerAttributesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public store player attributes params
func (o *PublicStorePlayerAttributesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public store player attributes params
func (o *PublicStorePlayerAttributesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public store player attributes params
func (o *PublicStorePlayerAttributesParams) WithHTTPClient(client *http.Client) *PublicStorePlayerAttributesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public store player attributes params
func (o *PublicStorePlayerAttributesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public store player attributes params
func (o *PublicStorePlayerAttributesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicStorePlayerAttributesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public store player attributes params
func (o *PublicStorePlayerAttributesParams) WithBody(body *sessionclientmodels.ApimodelsPlayerAttributesRequestBody) *PublicStorePlayerAttributesParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public store player attributes params
func (o *PublicStorePlayerAttributesParams) SetBody(body *sessionclientmodels.ApimodelsPlayerAttributesRequestBody) {
	o.Body = body
}

// WithNamespace adds the namespace to the public store player attributes params
func (o *PublicStorePlayerAttributesParams) WithNamespace(namespace string) *PublicStorePlayerAttributesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public store player attributes params
func (o *PublicStorePlayerAttributesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicStorePlayerAttributesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
