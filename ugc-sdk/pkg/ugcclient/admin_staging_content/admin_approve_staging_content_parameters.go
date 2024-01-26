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

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewAdminApproveStagingContentParams creates a new AdminApproveStagingContentParams object
// with the default values initialized.
func NewAdminApproveStagingContentParams() *AdminApproveStagingContentParams {
	var ()
	return &AdminApproveStagingContentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminApproveStagingContentParamsWithTimeout creates a new AdminApproveStagingContentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminApproveStagingContentParamsWithTimeout(timeout time.Duration) *AdminApproveStagingContentParams {
	var ()
	return &AdminApproveStagingContentParams{

		timeout: timeout,
	}
}

// NewAdminApproveStagingContentParamsWithContext creates a new AdminApproveStagingContentParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminApproveStagingContentParamsWithContext(ctx context.Context) *AdminApproveStagingContentParams {
	var ()
	return &AdminApproveStagingContentParams{

		Context: ctx,
	}
}

// NewAdminApproveStagingContentParamsWithHTTPClient creates a new AdminApproveStagingContentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminApproveStagingContentParamsWithHTTPClient(client *http.Client) *AdminApproveStagingContentParams {
	var ()
	return &AdminApproveStagingContentParams{
		HTTPClient: client,
	}
}

/*AdminApproveStagingContentParams contains all the parameters to send to the API endpoint
for the admin approve staging content operation typically these are written to a http.Request
*/
type AdminApproveStagingContentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsApproveStagingContentRequest
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

// WithTimeout adds the timeout to the admin approve staging content params
func (o *AdminApproveStagingContentParams) WithTimeout(timeout time.Duration) *AdminApproveStagingContentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin approve staging content params
func (o *AdminApproveStagingContentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin approve staging content params
func (o *AdminApproveStagingContentParams) WithContext(ctx context.Context) *AdminApproveStagingContentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin approve staging content params
func (o *AdminApproveStagingContentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin approve staging content params
func (o *AdminApproveStagingContentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin approve staging content params
func (o *AdminApproveStagingContentParams) WithHTTPClient(client *http.Client) *AdminApproveStagingContentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin approve staging content params
func (o *AdminApproveStagingContentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin approve staging content params
func (o *AdminApproveStagingContentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminApproveStagingContentParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin approve staging content params
func (o *AdminApproveStagingContentParams) WithBody(body *ugcclientmodels.ModelsApproveStagingContentRequest) *AdminApproveStagingContentParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin approve staging content params
func (o *AdminApproveStagingContentParams) SetBody(body *ugcclientmodels.ModelsApproveStagingContentRequest) {
	o.Body = body
}

// WithContentID adds the contentID to the admin approve staging content params
func (o *AdminApproveStagingContentParams) WithContentID(contentID string) *AdminApproveStagingContentParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the admin approve staging content params
func (o *AdminApproveStagingContentParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the admin approve staging content params
func (o *AdminApproveStagingContentParams) WithNamespace(namespace string) *AdminApproveStagingContentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin approve staging content params
func (o *AdminApproveStagingContentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminApproveStagingContentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
