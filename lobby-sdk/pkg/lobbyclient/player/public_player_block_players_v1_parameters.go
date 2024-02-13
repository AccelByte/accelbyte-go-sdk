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

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewPublicPlayerBlockPlayersV1Params creates a new PublicPlayerBlockPlayersV1Params object
// with the default values initialized.
func NewPublicPlayerBlockPlayersV1Params() *PublicPlayerBlockPlayersV1Params {
	var ()
	return &PublicPlayerBlockPlayersV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicPlayerBlockPlayersV1ParamsWithTimeout creates a new PublicPlayerBlockPlayersV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicPlayerBlockPlayersV1ParamsWithTimeout(timeout time.Duration) *PublicPlayerBlockPlayersV1Params {
	var ()
	return &PublicPlayerBlockPlayersV1Params{

		timeout: timeout,
	}
}

// NewPublicPlayerBlockPlayersV1ParamsWithContext creates a new PublicPlayerBlockPlayersV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicPlayerBlockPlayersV1ParamsWithContext(ctx context.Context) *PublicPlayerBlockPlayersV1Params {
	var ()
	return &PublicPlayerBlockPlayersV1Params{

		Context: ctx,
	}
}

// NewPublicPlayerBlockPlayersV1ParamsWithHTTPClient creates a new PublicPlayerBlockPlayersV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicPlayerBlockPlayersV1ParamsWithHTTPClient(client *http.Client) *PublicPlayerBlockPlayersV1Params {
	var ()
	return &PublicPlayerBlockPlayersV1Params{
		HTTPClient: client,
	}
}

/*PublicPlayerBlockPlayersV1Params contains all the parameters to send to the API endpoint
for the public player block players v1 operation typically these are written to a http.Request
*/
type PublicPlayerBlockPlayersV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *lobbyclientmodels.ModelsBlockPlayerRequest
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public player block players v1 params
func (o *PublicPlayerBlockPlayersV1Params) WithTimeout(timeout time.Duration) *PublicPlayerBlockPlayersV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public player block players v1 params
func (o *PublicPlayerBlockPlayersV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public player block players v1 params
func (o *PublicPlayerBlockPlayersV1Params) WithContext(ctx context.Context) *PublicPlayerBlockPlayersV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public player block players v1 params
func (o *PublicPlayerBlockPlayersV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public player block players v1 params
func (o *PublicPlayerBlockPlayersV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public player block players v1 params
func (o *PublicPlayerBlockPlayersV1Params) WithHTTPClient(client *http.Client) *PublicPlayerBlockPlayersV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public player block players v1 params
func (o *PublicPlayerBlockPlayersV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public player block players v1 params
func (o *PublicPlayerBlockPlayersV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicPlayerBlockPlayersV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public player block players v1 params
func (o *PublicPlayerBlockPlayersV1Params) WithBody(body *lobbyclientmodels.ModelsBlockPlayerRequest) *PublicPlayerBlockPlayersV1Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public player block players v1 params
func (o *PublicPlayerBlockPlayersV1Params) SetBody(body *lobbyclientmodels.ModelsBlockPlayerRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public player block players v1 params
func (o *PublicPlayerBlockPlayersV1Params) WithNamespace(namespace string) *PublicPlayerBlockPlayersV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public player block players v1 params
func (o *PublicPlayerBlockPlayersV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicPlayerBlockPlayersV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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