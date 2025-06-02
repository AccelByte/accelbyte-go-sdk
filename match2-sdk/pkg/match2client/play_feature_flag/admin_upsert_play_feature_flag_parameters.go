// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package play_feature_flag

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/match2-sdk/pkg/match2clientmodels"
)

// NewAdminUpsertPlayFeatureFlagParams creates a new AdminUpsertPlayFeatureFlagParams object
// with the default values initialized.
func NewAdminUpsertPlayFeatureFlagParams() *AdminUpsertPlayFeatureFlagParams {
	var ()
	return &AdminUpsertPlayFeatureFlagParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpsertPlayFeatureFlagParamsWithTimeout creates a new AdminUpsertPlayFeatureFlagParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpsertPlayFeatureFlagParamsWithTimeout(timeout time.Duration) *AdminUpsertPlayFeatureFlagParams {
	var ()
	return &AdminUpsertPlayFeatureFlagParams{

		timeout: timeout,
	}
}

// NewAdminUpsertPlayFeatureFlagParamsWithContext creates a new AdminUpsertPlayFeatureFlagParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpsertPlayFeatureFlagParamsWithContext(ctx context.Context) *AdminUpsertPlayFeatureFlagParams {
	var ()
	return &AdminUpsertPlayFeatureFlagParams{

		Context: ctx,
	}
}

// NewAdminUpsertPlayFeatureFlagParamsWithHTTPClient creates a new AdminUpsertPlayFeatureFlagParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpsertPlayFeatureFlagParamsWithHTTPClient(client *http.Client) *AdminUpsertPlayFeatureFlagParams {
	var ()
	return &AdminUpsertPlayFeatureFlagParams{
		HTTPClient: client,
	}
}

/*AdminUpsertPlayFeatureFlagParams contains all the parameters to send to the API endpoint
for the admin upsert play feature flag operation typically these are written to a http.Request
*/
type AdminUpsertPlayFeatureFlagParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *match2clientmodels.ModelsPlayFeatureFlag
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin upsert play feature flag params
func (o *AdminUpsertPlayFeatureFlagParams) WithTimeout(timeout time.Duration) *AdminUpsertPlayFeatureFlagParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin upsert play feature flag params
func (o *AdminUpsertPlayFeatureFlagParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin upsert play feature flag params
func (o *AdminUpsertPlayFeatureFlagParams) WithContext(ctx context.Context) *AdminUpsertPlayFeatureFlagParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin upsert play feature flag params
func (o *AdminUpsertPlayFeatureFlagParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin upsert play feature flag params
func (o *AdminUpsertPlayFeatureFlagParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin upsert play feature flag params
func (o *AdminUpsertPlayFeatureFlagParams) WithHTTPClient(client *http.Client) *AdminUpsertPlayFeatureFlagParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin upsert play feature flag params
func (o *AdminUpsertPlayFeatureFlagParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin upsert play feature flag params
func (o *AdminUpsertPlayFeatureFlagParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpsertPlayFeatureFlagParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin upsert play feature flag params
func (o *AdminUpsertPlayFeatureFlagParams) WithBody(body *match2clientmodels.ModelsPlayFeatureFlag) *AdminUpsertPlayFeatureFlagParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin upsert play feature flag params
func (o *AdminUpsertPlayFeatureFlagParams) SetBody(body *match2clientmodels.ModelsPlayFeatureFlag) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin upsert play feature flag params
func (o *AdminUpsertPlayFeatureFlagParams) WithNamespace(namespace string) *AdminUpsertPlayFeatureFlagParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin upsert play feature flag params
func (o *AdminUpsertPlayFeatureFlagParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpsertPlayFeatureFlagParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
