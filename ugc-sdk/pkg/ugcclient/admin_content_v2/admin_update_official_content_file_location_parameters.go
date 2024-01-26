// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content_v2

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

// NewAdminUpdateOfficialContentFileLocationParams creates a new AdminUpdateOfficialContentFileLocationParams object
// with the default values initialized.
func NewAdminUpdateOfficialContentFileLocationParams() *AdminUpdateOfficialContentFileLocationParams {
	var ()
	return &AdminUpdateOfficialContentFileLocationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateOfficialContentFileLocationParamsWithTimeout creates a new AdminUpdateOfficialContentFileLocationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateOfficialContentFileLocationParamsWithTimeout(timeout time.Duration) *AdminUpdateOfficialContentFileLocationParams {
	var ()
	return &AdminUpdateOfficialContentFileLocationParams{

		timeout: timeout,
	}
}

// NewAdminUpdateOfficialContentFileLocationParamsWithContext creates a new AdminUpdateOfficialContentFileLocationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateOfficialContentFileLocationParamsWithContext(ctx context.Context) *AdminUpdateOfficialContentFileLocationParams {
	var ()
	return &AdminUpdateOfficialContentFileLocationParams{

		Context: ctx,
	}
}

// NewAdminUpdateOfficialContentFileLocationParamsWithHTTPClient creates a new AdminUpdateOfficialContentFileLocationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateOfficialContentFileLocationParamsWithHTTPClient(client *http.Client) *AdminUpdateOfficialContentFileLocationParams {
	var ()
	return &AdminUpdateOfficialContentFileLocationParams{
		HTTPClient: client,
	}
}

/*AdminUpdateOfficialContentFileLocationParams contains all the parameters to send to the API endpoint
for the admin update official content file location operation typically these are written to a http.Request
*/
type AdminUpdateOfficialContentFileLocationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsUpdateFileLocationRequest
	/*ChannelID
	  channel ID

	*/
	ChannelID string
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

// WithTimeout adds the timeout to the admin update official content file location params
func (o *AdminUpdateOfficialContentFileLocationParams) WithTimeout(timeout time.Duration) *AdminUpdateOfficialContentFileLocationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update official content file location params
func (o *AdminUpdateOfficialContentFileLocationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update official content file location params
func (o *AdminUpdateOfficialContentFileLocationParams) WithContext(ctx context.Context) *AdminUpdateOfficialContentFileLocationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update official content file location params
func (o *AdminUpdateOfficialContentFileLocationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update official content file location params
func (o *AdminUpdateOfficialContentFileLocationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update official content file location params
func (o *AdminUpdateOfficialContentFileLocationParams) WithHTTPClient(client *http.Client) *AdminUpdateOfficialContentFileLocationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update official content file location params
func (o *AdminUpdateOfficialContentFileLocationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update official content file location params
func (o *AdminUpdateOfficialContentFileLocationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateOfficialContentFileLocationParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update official content file location params
func (o *AdminUpdateOfficialContentFileLocationParams) WithBody(body *ugcclientmodels.ModelsUpdateFileLocationRequest) *AdminUpdateOfficialContentFileLocationParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update official content file location params
func (o *AdminUpdateOfficialContentFileLocationParams) SetBody(body *ugcclientmodels.ModelsUpdateFileLocationRequest) {
	o.Body = body
}

// WithChannelID adds the channelID to the admin update official content file location params
func (o *AdminUpdateOfficialContentFileLocationParams) WithChannelID(channelID string) *AdminUpdateOfficialContentFileLocationParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the admin update official content file location params
func (o *AdminUpdateOfficialContentFileLocationParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithContentID adds the contentID to the admin update official content file location params
func (o *AdminUpdateOfficialContentFileLocationParams) WithContentID(contentID string) *AdminUpdateOfficialContentFileLocationParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the admin update official content file location params
func (o *AdminUpdateOfficialContentFileLocationParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the admin update official content file location params
func (o *AdminUpdateOfficialContentFileLocationParams) WithNamespace(namespace string) *AdminUpdateOfficialContentFileLocationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update official content file location params
func (o *AdminUpdateOfficialContentFileLocationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateOfficialContentFileLocationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param channelId
	if err := r.SetPathParam("channelId", o.ChannelID); err != nil {
		return err
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
