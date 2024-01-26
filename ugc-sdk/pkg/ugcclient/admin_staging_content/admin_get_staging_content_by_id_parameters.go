// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_staging_content

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewAdminGetStagingContentByIDParams creates a new AdminGetStagingContentByIDParams object
// with the default values initialized.
func NewAdminGetStagingContentByIDParams() *AdminGetStagingContentByIDParams {
	var ()
	return &AdminGetStagingContentByIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetStagingContentByIDParamsWithTimeout creates a new AdminGetStagingContentByIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetStagingContentByIDParamsWithTimeout(timeout time.Duration) *AdminGetStagingContentByIDParams {
	var ()
	return &AdminGetStagingContentByIDParams{

		timeout: timeout,
	}
}

// NewAdminGetStagingContentByIDParamsWithContext creates a new AdminGetStagingContentByIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetStagingContentByIDParamsWithContext(ctx context.Context) *AdminGetStagingContentByIDParams {
	var ()
	return &AdminGetStagingContentByIDParams{

		Context: ctx,
	}
}

// NewAdminGetStagingContentByIDParamsWithHTTPClient creates a new AdminGetStagingContentByIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetStagingContentByIDParamsWithHTTPClient(client *http.Client) *AdminGetStagingContentByIDParams {
	var ()
	return &AdminGetStagingContentByIDParams{
		HTTPClient: client,
	}
}

/*AdminGetStagingContentByIDParams contains all the parameters to send to the API endpoint
for the admin get staging content by id operation typically these are written to a http.Request
*/
type AdminGetStagingContentByIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ContentID
	  content ID

	*/
	ContentID string
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

// WithTimeout adds the timeout to the admin get staging content by id params
func (o *AdminGetStagingContentByIDParams) WithTimeout(timeout time.Duration) *AdminGetStagingContentByIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get staging content by id params
func (o *AdminGetStagingContentByIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get staging content by id params
func (o *AdminGetStagingContentByIDParams) WithContext(ctx context.Context) *AdminGetStagingContentByIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get staging content by id params
func (o *AdminGetStagingContentByIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get staging content by id params
func (o *AdminGetStagingContentByIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get staging content by id params
func (o *AdminGetStagingContentByIDParams) WithHTTPClient(client *http.Client) *AdminGetStagingContentByIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get staging content by id params
func (o *AdminGetStagingContentByIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get staging content by id params
func (o *AdminGetStagingContentByIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetStagingContentByIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithContentID adds the contentID to the admin get staging content by id params
func (o *AdminGetStagingContentByIDParams) WithContentID(contentID string) *AdminGetStagingContentByIDParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the admin get staging content by id params
func (o *AdminGetStagingContentByIDParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the admin get staging content by id params
func (o *AdminGetStagingContentByIDParams) WithNamespace(namespace string) *AdminGetStagingContentByIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get staging content by id params
func (o *AdminGetStagingContentByIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetStagingContentByIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
		return err
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
