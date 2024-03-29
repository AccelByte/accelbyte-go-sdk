// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// NewUpdateEpicGamesIAPConfigParams creates a new UpdateEpicGamesIAPConfigParams object
// with the default values initialized.
func NewUpdateEpicGamesIAPConfigParams() *UpdateEpicGamesIAPConfigParams {
	var ()
	return &UpdateEpicGamesIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateEpicGamesIAPConfigParamsWithTimeout creates a new UpdateEpicGamesIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateEpicGamesIAPConfigParamsWithTimeout(timeout time.Duration) *UpdateEpicGamesIAPConfigParams {
	var ()
	return &UpdateEpicGamesIAPConfigParams{

		timeout: timeout,
	}
}

// NewUpdateEpicGamesIAPConfigParamsWithContext creates a new UpdateEpicGamesIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateEpicGamesIAPConfigParamsWithContext(ctx context.Context) *UpdateEpicGamesIAPConfigParams {
	var ()
	return &UpdateEpicGamesIAPConfigParams{

		Context: ctx,
	}
}

// NewUpdateEpicGamesIAPConfigParamsWithHTTPClient creates a new UpdateEpicGamesIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateEpicGamesIAPConfigParamsWithHTTPClient(client *http.Client) *UpdateEpicGamesIAPConfigParams {
	var ()
	return &UpdateEpicGamesIAPConfigParams{
		HTTPClient: client,
	}
}

/*UpdateEpicGamesIAPConfigParams contains all the parameters to send to the API endpoint
for the update epic games iap config operation typically these are written to a http.Request
*/
type UpdateEpicGamesIAPConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.EpicGamesIAPConfigRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update epic games iap config params
func (o *UpdateEpicGamesIAPConfigParams) WithTimeout(timeout time.Duration) *UpdateEpicGamesIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update epic games iap config params
func (o *UpdateEpicGamesIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update epic games iap config params
func (o *UpdateEpicGamesIAPConfigParams) WithContext(ctx context.Context) *UpdateEpicGamesIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update epic games iap config params
func (o *UpdateEpicGamesIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update epic games iap config params
func (o *UpdateEpicGamesIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update epic games iap config params
func (o *UpdateEpicGamesIAPConfigParams) WithHTTPClient(client *http.Client) *UpdateEpicGamesIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update epic games iap config params
func (o *UpdateEpicGamesIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update epic games iap config params
func (o *UpdateEpicGamesIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateEpicGamesIAPConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update epic games iap config params
func (o *UpdateEpicGamesIAPConfigParams) WithBody(body *platformclientmodels.EpicGamesIAPConfigRequest) *UpdateEpicGamesIAPConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update epic games iap config params
func (o *UpdateEpicGamesIAPConfigParams) SetBody(body *platformclientmodels.EpicGamesIAPConfigRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update epic games iap config params
func (o *UpdateEpicGamesIAPConfigParams) WithNamespace(namespace string) *UpdateEpicGamesIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update epic games iap config params
func (o *UpdateEpicGamesIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateEpicGamesIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
